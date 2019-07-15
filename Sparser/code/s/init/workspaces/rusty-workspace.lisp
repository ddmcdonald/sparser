;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2014-2015 SIFT LLC. All Rights Reserved
;;;
;;;    File: "rusty-workspace"
;;;  Module: "init/workspaces/
;;; version: May 2015

;;remove (bio-traps) and (bf-on) in (rusty) -- no longer defined
;; 7/19/2015 Code to load all the sentences in the 1000 articles and search for patterns like no-space 
;;  words with dashes (or slashes)
;; add new utility methods for understanding non-card producing articles
;; ras2-proteins-in-sentences  show-sentences r2-proteins-in (n)


(in-package :sparser)

(defparameter *dli-counts* (make-hash-table))
(defparameter *dli-examples* (make-hash-table))
(defparameter *max-all-supers* 0)
(defparameter *total-all-supers* 0)
(defparameter *m-all-subs* nil)

(defun show-warnings (&optional (show-warnings t))
  (setq *reinterpret-dominating-edges-warning* show-warnings)
  (setq *warn-on-cant-find-corresponding-clauses* show-warnings)
  (setq *warn-attach-leading-pp-to-clause* show-warnings)
  ;;(setq *show-one-anaphora* show-warnings) not really a warning, but something to look at
  (if show-warnings
      (setq *no-source-for-binding-action* :warn)
      (setq *no-source-for-binding-action* :none)))

(defun show-dli-stats ()
  (declare (special *dli-counts* *dli-examples*))
  (clrhash *dli-counts*)
  (setq *dli-examples* (make-hash-table))
  (maphash #'(lambda (k v)(incf (gethash (length (indiv-old-binds v)) *dli-counts* 0))) *lattice-ht*)
  (maphash #'(lambda (k v)(push v (gethash (length (indiv-old-binds v)) *dli-examples*))) *lattice-ht*)
  (loop for i from 0 to 10 do (print (list i (gethash i *dli-counts*))))
  (setq *max-all-supers* 0)
  (setq *total-all-supers* 0)
  (maphash #'(lambda (k v)
	       (when (> (hash-table-count (indiv-all-supers v)) *max-all-supers*)
		 (setq *max-all-supers* (hash-table-count (indiv-all-supers v))))
	       (incf *total-all-supers* (hash-table-count (indiv-all-supers v)))
	       )
	   *lattice-ht*)
  (print `(*max-all-supers*
	   ,*max-all-supers*
	   *av-all-supers*
	   ,(/ *total-all-supers* (+ 0.0 (hash-table-count *lattice-ht*)))
	   )))

(defun bind-vars (i)
  (loop for b in (indiv-old-binds i)
     collect (var-name (binding-variable b))))

(defparameter *bv-ht* (make-hash-table :test #'equal))
(defparameter *nbv-ht* (make-hash-table :test #'equal))

(defun all-bvs ()
  (maphash #'(lambda (k v)
	       (incf (gethash (bind-vars v) *bv-ht* 0)))
	   *lattice-ht*)
  (maphash #'(lambda (k v)
	       (pushnew (bind-vars v)
			(gethash (norm-bv (bind-vars v)) *nbv-ht*)
			:test #'equal))
	   *lattice-ht*)
  (hal *nbv-ht*))

(defun norm-bv (bv)
  (sort bv #'string< ))


(defun rusty()
  (setup-bio) ;; load the bio model etc.
  ;;(bio-traps) ;; turn off forest level parsing and this presently problematic parameter

  (bio-setting)
  (setq *kind-of-chart-processing-to-do* :successive-sweeps)
  (what-to-do-with-unknown-words :capitalization-digits-&-morphology/or-primed)

  ;;(load "~/sparser/Sparser/code/s/grammar/rules/words/one-offs/comlex-def-forms.lisp")
  ;;(setq *trace-treetops-sweep* t)

  ;;(ddm-ed "drivers/forest/sweep.lisp")
  ;;(ddm-ed "drivers/chart/psp/pts5.lisp")
  ;;(ddm-ed "grammar/rules/syntax/categories.lisp")
  ;;(ddm-ed "drivers/chart/psp/chunker.lisp")
  ;;(ddm-ed "drivers/forest/new-forest-protocol.lisp")
  ;;(ddm-ed "drivers/forest/sweep.lisp")
  (ddm-ed "drivers/chart/psp/no-brackets-protocol.lisp")
  ;;(ddm-ed "grammar/rules/syntax/syntactic-rules.lisp")
  ;;(ddm-ed "objects/traces/psp1.lisp")
  ;;(ddm-ed "objects/traces/DA.lisp")
  (ddm-ed "objects/traces/treetops.lisp")
  (ddm-ed "grammar/model/sl/biology/verbs1.lisp")
  (ddm-ed "grammar/model/sl/biology/terms1.lisp")
  (ddm-ed "grammar/model/sl/biology/taxonomy.lisp")
  ;;(ddm-ed "grammar/model/sl/biology/drugs.lisp")
  ;;(ddm-ed "init/workspaces/Biology-workspace.lisp")
  (ddm-ed "grammar/model/sl/biology/cureRAS/December-text-passages.lisp")
 
  ;;  (setq *trace-network-flow* t)
  ;;(bf-on)
  (ddm-load "grammar/model/sl/biology/cureRAS/December-text-passages.lisp")
  (ddm-load "grammar/model/sl/biology/cureRAS/erk-translocation.lisp")
  (ddm-load "grammar/model/sl/biology/cureRAS/aspp2-whole.lisp")
  (ddm-load "grammar/model/sl/biology/cureRAS/load-test-sents.lisp")
  (ddm-ed "grammar/model/sl/biology/cureRAS/load-test-sents.lisp")

  (trace-lexicon-unpacking) 
  (trace-morphology)
  ;;(setq *do-anaphora* nil)
  (setq *note-text-relations* nil)
)

(defun pos (n)(chart-array-cell n))
(defun np (l &optional (stream t))
  (loop for ll in l do
          (let* ((*print-pretty* nil))
            (print ll stream))))

(defun ht-to-alist (ht)
  (let
      ((alist nil))
    (maphash #'(lambda(l h) (push (list l h) alist)) ht)
    (sort alist #'(lambda (x y)(string< (format nil "~s" x)(format nil "~s" y))) :key #'car)))

(defun show-brackets (end)
  (np 
   (loop for i from 1 to end
	 collect
	 (list
	  i
	  (ev-boundary (pos-ends-here (pos (- i 1))))
	  (ev-boundary (pos-starts-here (pos i)))
	  (pos-terminal (pos i))
	  )))
  )

#+ignore ;; now just use CCL file search
(defun caller-tree (fn &optional (levels 3) seen)
  (let
      ((callers
	(loop for xref in (get-relation :direct-calls :wild  fn)
	      collect
	      (xref-entry-name xref))))
    (cons
     fn
     (if (> levels 0)
	 (loop for caller in callers 
	       collect
	       (if (memq caller seen)
		   (list caller "...")
		 (progn
		   (setq seen (cons caller seen))
		   (caller-tree caller (- levels 1) seen)))
	       )))
    )
  )

#+ignore ;; for cross-ref -- now just use search through files
(defun call-tree (fn &optional (levels 3) seen)
  (let
      ((called
	(loop for xref in (get-relation :direct-calls  fn :wild)
	      collect
	      (xref-entry-name xref))))
    (cons
     fn
     (if (> levels 0)
	 (loop for callee in called 
	       collect
	       (if (memq callee seen)
		   (list callee "...")
		 (progn
		   (setq seen (cons callee seen))
		   (call-tree callee (- levels 1) seen))))
       )
     )
    )
  )

#||
*bracketing-progress* has a list of bracket positions
||#

#||
(analysis-core...)
(chart-based-analysis)
(lookup-the-kind-of-chart-processing-to-do)
(inititate-top-edges-protocol)
(check-word-level-fsa-trigger ss p0)
(check-PNF-and-continue word position-before)
(continuation-after-pnf-returned-nil word position-before)
(introduce-right-side-brackets
        word (chart-position-after position-before))
   (introduce-trailing-brackets word position-after)
   (check-for-]-from-prior-word position-after word)
      (check-for-[-from-prior-word position-after prior-word))
          ([-on-position-because-of-word? position-after prior-word)
          (adjudicate-new-open-bracket [ position-after)
          (scan-next-pos position-after)            ;;; Main line of the control network

            ;; Called from Scan-and-assess
             ;; Intended to be the only means of advancing through the chart.
             ;; Always working at the chart's right-fringe.
             ;; Does its own calls to Add-terminal to keep the chart always
             ;;  full one position out.
          (scan-next-position)     --->> scan3.lisp
            (add-terminal-to-chart)
            (continue-scan-next-pos position))
                (introduce-leading-brackets word position)     ---------> place-brackets1.lisp
                       (place-boundary/ends-before label position-before ends-before) ;; update the ending bracket at this position
                            (place-boundary/begins-before label position-before begins-before))
                       (place-boundary/begins-before label position-before begins-before));; update the endingbeginning bracket at this position
                  ;;  has trace "[scan] introduce-leading-brackets \"~A\""
                (check-for-]-from-word-after word position)))



||#

(defun all-words ()
  (let
      ((words nil))
    (do-symbols (s *word-package*) (push s words))
    words))

(defun wrs (w)
  (let
      ((wrs
        (cond
         ((symbolp w)
          (and (boundp w) (word-p (eval w))
               (word-rule-set (eval w))))
         ((word-p w)
          (word-rule-set w)))))
    (and
     wrs
     (rule-set-p wrs)
     wrs)))


(defun all-rule-words ()
  (loop for w in (all-words)
    when 
    (wrs w)
    collect w))

(defun rls (w)
  (and (wrs w)
       (or
        (rs-right-looking-ids (wrs w))
        (rs-fsa (wrs w)))))

#+ignore
(defun simple-parse (str)
  (setq chart (create-lexical-level-chart str)) ;; includes running FSA and other rewrite rules over the entire chart
  (setq bchart (bracketize chart)) ;; this is a chart with all the right bracket structures inserted
  (setq parsed-bracket-chart (parse-segments bchart))
  (setq forest-chart (process-forest parsed-bracket-chart)))

(defun all-sparser-functions ()
  (let*
      ((sfns (all-package-fns :sparser))
       (clfns (all-package-fns :cl))
       (clufns (all-package-fns :cl-user)))
    (sort
     (loop for s in sfns
           unless (or (memq s clfns)(memq s clufns))
           collect s)
     #'string<)))

(defun all-spire-functions ()
  (let*
      ((sfns (all-package-fns :spire))
       (clfns (all-package-fns :cl))
       (clufns (all-package-fns :cl-user)))
    (sort
     (loop for s in sfns
           unless (or (memq s clfns)(memq s clufns))
           collect s)
     #'string<)))

(defun all-clic-functions ()
  (let*
      ((clicfns (all-package-fns :clic))
       (clfns (all-package-fns :cl))
       (clufns (all-package-fns :cl-user)))
    (sort
     (loop for s in clicfns
           unless (or (memq s clfns)(memq s clufns))
           collect s)
     #'string<)))

(defun all-package-fns (packname)
  (let* ((pack (find-package packname))
         (fns nil))
    (do-symbols (s pack)
      (when (fboundp s) (push s fns)))
    fns))
      
(defun mark-examples ()
  (load "~/r3/code/integration/cycorp/aspp2-examples"))

#+:sbcl
(defvar *profns*)

#+:sbcl
(DEFPARAMETER *SP-FNS*
  '(**/* -?krisp 1st-preterminal-at abbreviation
    abbreviation-is-a-prefix? abbreviation? absorb-auxiliary
    absorb-parentheses abstract-mdata? accept-pattern
    acceptable-missing-mention?
    accomodate-segment-parse-to-new-boundaries accumulate-spaces
    accumulate-terms-and-add-counts acronym-is-alternative-for-name
    activate-current-np-referent activate-current-vg-referent
    activate-initial-indexical activate-object
    activate-subject activate-verb actual-characters-of-word
    actual-strings-for-list-of-words actual-word-introduces-bracket
    actually-reading ad-category ad-cell ad-children
    ad-depth ad-description ad-display-string
    ad-dossier ad-examples ad-function
    ad-hoc-subj+copula-rule ad-instantiable? ad-module
    ad-parent ad-plist ad-write-fn
    add-adjunctive-clause-to-s add-autodef-obj-to-tableau
    add-bio-synonyms add-bio-term-counts
    add-category-to-individual add-chunk-edges-snapshot
    add-def-ref add-dependent-location
    add-domain-adjunctive-pp-rule add-downlink add-entity
    add-etf-mapping add-fsa add-hgnc-ids
    add-if-not-a-duplication add-indexical-to-situation
    add-initial-interjection add-initial-interjection/no-comma
    add-item-to-collection add-item-to-list-value
    add-k-method add-literature-adjunct add-location-to-event
    add-longer-name-to-entity add-manner-to-event add-mixin
    add-new-dependencies add-new-dependencies-for-collection
    add-new-rnode-to-lattice-point add-new-terms-or-add-counts
    add-new-word-to-catalog add-nominal-start-bracket
    add-parse-quality-grades add-pending-def-ref
    add-pending-partitive add-permanent-individual
    add-punctuation-char add-punctuation-chars
    add-purpose-to-event add-referent-to-peg add-relation
    add-rnode-to-its-individual add-rule add-rules
    add-rules-cond-plural add-specific-subcategorization-facts
    add-statement-to-wh-question add-subcat-pattern
    add-subsuming-object-to-discourse-history add-syn-to-prot-def
    add-tense/aspect add-tense/aspect-info-to-head
    add-tense/aspect-to-subordinate-clause add-terminal-to-chart
    add-text-relation-to-article add-time-adjunct
    add-time-to-event add-to-container add-to-document-set
    add-to-peg add-type-to-individual add-upas-to-def
    add-uplink ddm-util:add1
    additional-categories-of-active-individuals adj
    adj-noun-compound adj-postmodifies-noun adj/adv
    adj/expr adjacency-relations adjacent-edges-at
    adjacent-edges-in-current-chunk adjacent-edges-in-region
    adjacent-edges? adjacent-positions adjacent-tt-pairs
    adjacent-tt-pairs1 adjacent-tts adjective-phrase?
    adjg-compatible? adjg-head? adjoin-ascomp-to-vg
    adjoin-pp-to-vg adjoin-prepcomp-to-vg adjoin-tocomp-to-vg
    adjoin-vg-to-embedded-tocomp adjudicate-after-edge-fsa
    adjudicate-after-new-forest-protocol adjudicate-after-pnf
    adjudicate-after-scan-pattern-has-succeeded
    adjudicate-equal-rank-brackets adjudicate-multiple-fsas
    adjudicate-new-open-bracket
    adjudicate-possible-sentence-start-and-make-cap-seq-edge
    adjudicate-result-of-scan-pattern-after-fsas-ran
    adjudicate-result-of-word-fsa
    adjudicate-return-from-invisible-lookahead-with-swapped-buffer
    adjudicate-sentence-initial-cap-seq adjudicate-specializations
    adjudicate-specializations/list
    adjudicate-status-after-fsa-returned
    adjust-text-to-fixed-line-length adverb-at? adverb-comma
    adverb? adverbial-morphology? ae/after-scan
    ae/compete-traverse&continue ae/dispatch ae/do-edges
    ae/scan&continue affix-checker after-action-on-segments
    after-actions after-analysis-actions
    after-analysis/article after-quiescence
    aggregate-bio-terms aggregate-parse-performance
    aggregate-sentence-bio-terms aggregate-terms
    aggregated-other aggregated-processes aggregated-proteins
    aggregated-residues aggregation-target ddm-util:alist-to-plist
    all-bces all-bind-prots all-bindings
    all-bindings-such-that all-bio-entities all-bps
    ddm-util:all-but-last-item! all-but-last/iseq all-bvs
    all-corpus-sentences all-current-sentences
    all-da-patterns all-defined-rule-sets all-dlis
    all-dlvvs all-dotted-pairs? all-edges-at
    all-edges-on all-edges-setting all-edges-setting/bbn
    all-edges-traces all-entities all-event-relations
    ddm-util:all-hash-keys ddm-util:all-hash-vals all-individual-categories
    all-individuals-in-tts all-instances all-instances-of
    all-mentioned-specializations all-mentions
    all-package-fns all-phrasal-dlis all-preterminals-at
    all-protein-names all-proteins all-prots
    all-punctuation-chars? all-relations all-rels
    all-rule-words all-sparser-functions all-subcat-patterns
    all-such-that all-surface-strings
    all-the-categories-in-a-composite ddm-util:all-the-same
    all-treetops all-tts all-values-for all-words
    allocate-a-rasher-of-bindings allocate-a-rasher-of-cons-cells
    allocate-a-rasher-of-individuals allocate-a-rasher-of-psi
    allocate-article allocate-binding allocate-category+value
    allocate-individual allocate-more-paragraphs
    allocate-next-instance allocate-paragraph
    allocate-paragraph-structure allocate-psi
    allocate-section allocate-section-of-sections
    allocate-sentence allocate-title-text allocate-v+v
    allow-invisible-markup allowable-post-quantifier?
    allowable-protein-head allowable-referential-edge?
    allowable-referential-value? alphabetic-char? alphabetize
    alphabetize-list-of-words alphabetize-table-entries
    alphabetize-word-list alphabetize-words
    already-completed/right already-long-term-ified?
    ambiguity-equivalent-var? ambiguous-comlex-primed-decoder
    ambiguous-name-stub ambush-setting analysis-core
    analysis-core-return-value analyze-and-report-timing-data
    analyze-constituent analyze-document-stream
    analyze-hyphenated-number-as-an analyze-nl-stack
    analyze-pp analyze-reach-verbs analyze-segment
    analyze-segment-as-dateline analyze-segment-layout
    analyze-segment-with-continuous-edges analyze-text-from-directory
    sparser:analyze-text-from-file analyze-text-from-file/at-filepos
    sparser:analyze-text-from-open-file sparser:analyze-text-from-string
    annotate-composite annotate-daughter annotate-form-rule
    annotate-individual annotate-number
    annotate-realization-pair annotate-realization/base-case
    annotate-site-bound-to annotate-source-of-bracket
    annotate-unary-realization announce-effect-of-rule-definition
    announce-out-of-range-character announce-over-ridden-ambiguities
    anonymous-variable-p answer-setting
    any-rule-in-list-is-dotted apostrophe-fsa
    appears-as-lhs-of-some-case
    append-doc-element-to-children-of-parent ddm-util:append-new
    ddm-util:appendf applicable-sc-patterns apply-bindings
    apply-cfr-to-first-compatible-right-neighbor apply-copula
    apply-copular-pp apply-early-rule-at
    apply-function-term-etf apply-ha-to-current-segment
    apply-ha-to-segment-with-multiple-heads-or-prefixes
    apply-inherited-mumble-data apply-lambda-abstraction
    apply-multiplier apply-mumble-rdata
    apply-object-relative-clause
    apply-of-np-to-nominalization-of-transitive apply-porter-stemmer
    apply-pp-relative-clause apply-preposition-to-complement
    apply-question-displaced-vg apply-question-marker
    apply-reduced-relative-clause apply-rnode
    apply-segment-heuristics apply-single-category-rdata
    apply-subcat-patterns apply-subject-relative-clause
    apply-upstairs-np-to-subject-relative apply-when-relative-clause
    apply-where-relative-clause apply-why-relative-clause
    arc-label arc-left-vertex arc-matches-tt?
    arc-morph-keyword arc-number-of-words arc-plist
    arc-polyword arc-right-vertex arc-scan-function
    arc-word are-any-letters-capitalized
    are-the-rest-capitalized arg-type article
    article-date article-location article-source
    articles as-a-number as-specific? aspp2test
    aspp2tests assemble-category-rule-and-referent-for-an-obo
    assemble-date assemble-function-report-data
    assemble-name-for-individual assemble-raw-number-sequence
    assess-edge-label assess-edge-label/all
    assess-edge-label/top assess-parenthesized-content
    assess-possible-subcat-options assess-relevance
    assess-relevance-intro assess-relevance-phrases
    assess-relevance-ref assess-sentence-analysis-quality
    assign-bracket assign-bracket/expr
    assign-bracket/intermediary assign-brackets
    assign-brackets-as-a-common-noun assign-brackets-as-a-main-verb
    assign-brackets-for-word assign-brackets-to-adjective
    assign-brackets-to-adverb assign-brackets-to-interjection
    assign-brackets-to-preposition assign-brackets-to-proper-noun
    assign-brackets-to-standalone-word assign-brackets-to-word
    assign-brackets/expr assign-brackets/intermediary
    assign-lemma assign-lemma/expr
    assign-morph-brackets-to-unknown-word assign-noun-verb-brackets
    assign-object assign-premod assign-rank-to-bracket
    assign-subcat/expr assign-subcategorization
    assign-subject assimilate-adj-complement
    assimilate-appositive assimilate-clausal-comp
    assimilate-howcomp assimilate-indirect-object
    assimilate-np-to-v-as-object assimilate-object
    assimilate-object-comp assimilate-object-to-dependent
    assimilate-pp-subcat assimilate-subcat
    assimilate-subcat-to-collection assimilate-subject
    assimilate-subject-as-object? assimilate-subject-for-control-verb
    assimilate-subject-for-copular-predication
    assimilate-subject-to-subordinate-clause
    assimilate-subject-to-vp-ed assimilate-subject-to-vp-ing
    assimilate-tableau-forms assimilate-tableau-forms1
    assimilate-thatcomp assimilate-transition-set
    assimilate-trips-ontology assimilate-whethercomp ddm-util:assq
    at-least-as-constrained-on
    attach-appositive-comma-np-comma-under-pp
    attach-appositive-comma-np-endpos-under-pp
    attach-appositive-comma-proper-noun-under-pp
    attach-appositive-np-under-s attach-appositive-to-np
    attach-binding-to-category attach-bindings-to-category
    attach-comma-appositive-np-comma-under-s
    attach-comma-appositive-np-under-s
    attach-comma-appositive-proper-noun-under-s
    attach-comma-pp-comma-following-clause
    attach-comma-pp-following-clause
    attach-leading-pp-no-comma-to-clause attach-leading-pp-to-clause
    attach-np-comma-np-comma-as-appositive
    attach-np-comma-proper-noun-comma-as-appositive
    attach-oblique-s-as-subject-to-vp attach-pp-following-clause
    attach-pp-to-np-with-commas
    attach-preceding-participle-with-comma-to-clause
    attach-proper-noun-comma-np-comma-as-appositive
    attach-proper-noun-comma-proper-noun-comma-as-appositive
    attach-to-comp-comma-to-s
    attach-trailing-participle-to-clause-or-object
    attach-trailing-participle-to-clause-or-object-with-comma
    attach-trailing-participle-to-clause-with-conjunction
    attached-reduced-relative-to-np-of-pp attend-to-action
    attend-to-action-stmt attend-to-body attend-to-body-stmt
    attend-to-rule attribute-value-of-object autodef-named
    autodef-p aux-before-np? aux/modal-category?
    auxiliary-word? avar-name avar-plist b-category
    b-direction b-placement b-plist b-rank
    b-symbol b-word ba-backpointer ba-begins-after
    ba-begins-before ba-ends-after ba-ends-before
    background-knowledge backoff-multiple-treetops-for-pnf
    backquote-reader backup-to-any-pending-arc-set bad
    base-category-of-lp base-description base-layout
    base-pp basic-add-new-dependencies begin-new-article
    begin-new-paragraph belmoral best-head
    best-protein-id best-recent-mention best-treetop-rule
    best-variable-for-syntactic-label better
    between-wh-and-modal binary-rule? bind-amino-acid
    bind-and-bio-entity bind-and-prots
    bind-category-of-instance
    bind-context-and-apply-da-function-action bind-dli-variable
    bind-open-var bind-position-on-residue
    bind-protein-mutation bind-substrate-for-residue bind-v+v
    bind-variable bind-variable-on-peg bind-variable/expr
    bind-vars bind-wh-to-stmt-variable bind-wh-variable
    binding-body binding-count binding-id
    binding-instructions-saturate-slots? binding-of-bindings
    binding-of-individual binding-p binding-plist
    binding-short-string binding-value
    binding-value-short-string binding-variable
    bindings-by-var-name bindings-by-var-names binds
    binds-a-word? binds-all-slots binds-all-these-variables
    binds-no-vars-p binds-preposition? binds-some-var-p
    binds-var-p binds-variable bio-coercion-compatible?
    bio-process-string bio-setting bkptr bl/i-1
    blank-line-nl-fsa blank-line/indentation-nl-fsa
    blank-line/phrase-boundaries-nl-fsa bless-sent-snapshots
    blist-val blocks-world-setting blue-string
    body-isa-helper boeing both-ends-completion-heuristic
    bound-in bound-in-short-string bound-object-var
    bound-p bound-prepositions bound-subject-var
    bound-word boundary-continuation bp-id-of-individual
    bracket-assignment-p bracket-assignment-to-list
    bracket-closing-segment-at bracket-ends-the-segment?
    bracket-named bracket-p bracketing-tree
    brackets-for-adjective-adverb brackets-for-adjective-adverb-noun
    brackets-for-adjective-adverb-noun-verb
    brackets-for-adjective-noun
    brackets-for-adjective-noun-sconj-prep-verb
    brackets-for-adjective-verb brackets-for-adverb-noun
    brackets-for-adverb-noun-verb brackets-for-word
    brackets-on break ddm-util:break-up-at break/debug
    brent-cam-ras bump-&-store-word c&r-multi-word-span
    c&r-single-spanning-edge c&r-single-word |C+V#|
    c+v-for-edge c-itypep c3-apply-composition-instructions
    c3-lookup-composer c3-process-segment-and-update-state
    c3-segment-parse c3-setting c3-sv-optional-o
    ca-action cache-c+v-on-edge cache-new-length-of-spaces
    cache-out-of-band-character cache-rnode-on-edge
    cache-rnode-on-parent-edge cache-rspec
    cache-variable-lookup cached-variable-lookup?
    calculate-capitalization-of-word/in-buffer calculate-descriptors
    calculate-morphology-of-word/in-buffer
    calculate-properties-of-words-pname/in-buffer
    call-next-terminal-and-dispatch callers
    can-fill-vp-object? can-fill-vp-subject?
    can-segment-ever-extend can-start? canonical-category-for
    canonical-ref-var canonical-tr-name
    cap-seq-continues-from-here? cap-seq-continues-from-here?/aux
    cap-seq-no-referent capital-letter
    capitalization-dispatch/no-op capitalization-fsa
    capitalization-sensitive-word-order
    capitalization-variant-is-known? capitalized
    capitalized-correspondent capitalized-instance
    capitalized-version caps-after-non-initial-of
    carefully-walk-initial-chart carry-out-actions
    case-pp-search case-pps cat-binds cat-id-counter
    cat-instances cat-lattice-position cat-mention?
    cat-mix-ins cat-name cat-operations
    cat-ops-category cat-ops-find cat-ops-index
    cat-ops-instantiate cat-ops-print cat-ops-reclaim
    cat-ops-rule-label cat-plist sparser:cat-realization
    cat-rnodes cat-rule-set cat-slots
    cat-specialized-class cat-string cat-symbol
    catalog/category catalog/cfr catalog/polyword
    catalog/word categories-using-etf
    categories-with-rule-sets categorize-and-form-name
    category category+value-p category+variable-p
    category-for-edge-given-name-type category-for-edge-given-referent
    category-for-individuals-discourse-history category-ids
    category-ids/leftward category-ids/rightward
    category-inherits-type? category-instantiates
    category-lattice-node-belongs-to category-multiplier
    sparser:category-named category-named/c-symbol category-of
    category-of-dotted-rule category-of-edge-ending-at
    category-of-edge-starting-at category-of-psi
    category-of-right-suffix category-of-self-lattice-point
    category-operations-p category-p category-status
    category-to-apply ccl/2e cells-defnp cfg-setting
    cfr-category cfr-completion cfr-form cfr-p
    cfr-plist cfr-referent cfr-relation cfr-rhs
    cfr-rhs-forms cfr-schema cfr-symbol
    change-edge-end-position changes-to-known-rule
    char-continues-known-sequence? char/wb
    character-buffer-being-used character-entry
    characterize-type-for-mixed-case characterize-word-type
    characterize-words-in-region chart chart-array-cell
    chart-based-analysis chart-position chart-position-after
    chart-position-before chart-position-n-positions-before
    check-&-load check-alts-for-up check-and-return
    check-and-setup-functional check-bindings
    check-consistent-mention check-edge-against-all-neighbors
    check-edge-fsa-trigger check-for-abbreviation-before-position
    check-for-all-being-number-edges check-for-appositive-debris
    check-for-background-knowledge check-for-clash-with-other-da-rules
    check-for-completion-actions/category
    check-for-completion-actions/word check-for-contrast
    check-for-dateline check-for-evidence-for
    check-for-experimental-result-of check-for-extension-from-vertex
    check-for-initial-before-position check-for-just-one-form-category
    check-for-pattern check-for-polywords
    check-for-punctuation-after-header check-for-result-of
    check-for-right-extensions check-for-right-extensions/forest
    check-for-same-role check-for-stranded-date
    check-for-subcatorized-pps check-for-the-word-being-one
    check-for-uniform-no-space-sequence
    check-for-verb-preposition-pair check-for-[-from-prior-word
    check-for-[-from-word-after check-for-]-from-edge-after
    check-for-]-from-prior-word check-for-]-from-word-after
    check-for/initiate-scan-patterns check-fsa-edge-for-brackets
    check-fsa-edge-for-leading-[-bracket
    check-fsa-edge-for-trailing-brackets
    check-fsa-edge-for-trailing-[-bracket check-hms-groundings
    check-impact-on-quiescence-pointer check-irregular-word-markers
    check-known-variants-for-fsas check-known-word-for-word-fsas
    check-kraql-cache check-left-against-all-neighbors
    check-left-against-all-neighbors/kcons
    check-left-against-all-neighbors/vector check-many-many
    check-many-one check-middle-out-from-arc check-one-many
    check-one-one check-out-possible-conjunction
    check-overridden-vars check-passive-and-add-tense/aspect
    check-plausible-missing-edge-for-dependency check-pnf-and-continue
    check-preterminal-edges check-quotation check-rdata
    check-right-against-all-neighbors
    check-right-against-all-neighbors/kcons
    check-right-against-all-neighbors/vector check-right-extensions/2
    check-scan-transition-output check-special-cases-and-possessive
    check-tt-against-arc-set check-validity-of-individual
    check-variants-for-word-fsas check-word-level-fsa-trigger
    check/unindex-dynamically-extended-list checkout-&-for-capseq
    checkout-comma-for-capseq
    checkout-continuation-for-non-punctuation
    checkout-forward-slash-for-capseq checkout-hyphen-for-capseq
    checkout-percent-sign-for-capseq checkout-period-for-capseq
    checkout-punctuation-for-capseq checkout-single-quote-for-capseq
    checkpoint-call-and-postprocessing checkpoint-ops-setting
    children chomsky-adjoin ddm-util:choose
    choose-between-form-rules chunk-edge-list chunk-end-pos
    chunk-ev-list chunk-final-edge? chunk-forms
    chunk-has-plural-det? chunk-head? chunk-start-pos
    chunker-overreached citation-is-longer-than-text
    citation-named citation-p cite cite-bracketing
    cite-edge-descriptors cite-grammar-module cite-plist
    cite-string city-vs-state classification-fsa
    classification-fsa/continued classified-head
    classifier-head-relations classifier-of-head
    classify&record-the-rest-of-the-sequence classify-&-record-span
    classify-and-record-name classify-word-for-frequency
    clause+pp clause-and-subordinate clause-comma-subordinate
    clause-comma-subordinate-event-relation
    clause-comma-subordinate-np clause-from-var
    clause-sem->file clause-semantics-for-mention
    clause-subordinate clause-subordinate-relative-clause
    clause-target? clause-tree->clause clause-with-list
    clauses clauses->unique-cats clauses->unique-roles
    clean-binds-field clean-bound-in-field
    clean-out-history-and-temp-objects clean-some-xml-from-string
    clean-unhandled-unknown-words clean-up-non-individual-value
    clean-up-ns-collection clean-word
    cleanout-edge-vector-array cleanout-ev-array/kcons
    cleanout-ev-array/vector cleanup-bindings-fields
    cleanup-call-to-caps-fsa cleanup-lifo-instance-list
    cleanup-root-section-object
    cleanup-segment-boundaries-after-pattern-edge
    cleanup-segment-printing-if-necessary cleanup-vectors-if-needed
    clear clear-after-paragraph-actions clear-chunk-recording
    clear-context-variables clear-deallocated-bindings/var
    ddm-util:clear-debug clear-discourse-history-entry clear-document
    clear-etf-accumulators clear-individual-dh-entry
    clear-instances/variable
    clear-instantiated-scan-pattern-element-array clear-kraql-cache
    clear-latents-wrapper clear-lattice clear-np-start?
    clear-pattern-counts clear-rule-records
    clear-sentence-corpus clear-stack-of-pending-left-openers
    clear-sweep-sentence-tt-state-vars clear-syntactic-function-data
    clear-syntactic-function-usage-data clear-traversal-state
    clear-treebank-tables clear-trips-ontology-assimilation
    clear-unhandled-unknown-words
    close-article-semantic-file-if-needed close-bracket
    close-bracket-already-there
    sparser:close-character-source-accidentally-left-open
    close-character-source-file close-pending/initiate-new-section
    closes-ongoing-segment collect-all-new-defs
    collect-all-std-prot-comp-names collect-allowable-protein-heads
    collect-bio-bad-utterances collect-bio-chemical-entity-strings
    collect-bio-chemical-heads collect-bio-entity-heads
    collect-bio-entity-strings collect-cases-of-multiple-rdata-heads
    collect-conjunctions collect-id-and-synonyms
    collect-k-method-specializers collect-kraql-indivs-if
    collect-lexical-rules
    collect-localization-interesting-heads-in-sentence collect-model
    collect-model-description collect-model-description-for-collection
    collect-new-individuals collect-no-space-segment-into-word
    collect-no-space-sequence-into-word collect-ns-examples
    collect-parsed-indivs-if collect-relations-from-articles
    collect-rules collect-semantic-cfrs
    collect-sentences-from-articles collect-sentences-if
    collect-sentences-mentioning-category
    collect-sentences-mentioning-individual
    collect-strings-from-comlex-entry collect-sub-tree
    collect-subcat-statistics collect-supercategories-off-lp
    collect-syntactic-function-usage collect-triples-in-segment
    collect-triples-with-edges-over-one-word collect-tts-indivs-if
    collect-var-info collect-variables-from-supercs
    collection-items collection-of-type/dh
    collection-or-sequence-p collection-p
    collection-print-routine collective-variable?
    colon-reader colorize comlex-entry
    comlex-noun-adjective-ambiguous-words
    comlex-noun-verb-ambiguous-words comlex-subcategorization
    comlex-verb-adjective-ambiguous-words comma-adverb-comma
    comma-dispatch-for-subject-search comma-just-before-edge?
    comma-just-before-position? comma-just-to-its-left
    comma-just-to-its-right comma-reader comma?
    common-noun common-noun/expr
    company/check-if-conjunction-is-a-list
    comparative-adj-noun-compound compare-chunking
    compare-sent-snapshots compare-test-reach
    compare-to-reach compare-to-snapshot compare-to-snapshots
    compare-trie-threading-with-pattern compatible-edge-form?
    compatible-edge? compatible-form compatible-form?
    compatible-head-edges? compatible-head? compatible-heads
    compatible-with-chunk compatible-with-specified-part-type
    compatible-with-variable? compatible-with-vg?
    competition-against-clausal-object? compile-&-load
    compile-functions complement-variable complete
    complete-any-single-term-edges complete-dotted-rule-from-stub
    complete-edge/hugin complete-tag-and-prior-slash
    complete-word/hugin complete/hugin
    completion-matches/left? complex->contains-type-ht
    compose compose-as-reduced-relative
    compose-as-relative-clause compose-date
    compose-discontinuous-aux compose-ordinal-to-head
    compose-relative-subordinator compose-salient-hyphenated-literals
    compose-segment-edge compose-that-with-vp
    compose-wh-with-vp composed-by-usable-rule
    composite-referent-p compute-applicable-k-methods
    compute-daughter-relationships compute-decimal-value
    compute-label compute-number-value-from-digits-array
    compute-paired-punct-referent compute-split-token
    compute-word-based-number concatenate-print-forms-of-cfrs
    conceptual-analysis-action ddm-util:cond-every
    condition-anaphor-edge configure-and-analyze-sub-ns-sequence
    confirm-or-replace-markup-data-in-trie conj-info
    conjecture-phrase conjecture? conjectures
    conjoin-adjacent-like-treetops conjoin-and-rethread-edges
    conjoin-clause-and-vp conjoin-clause-and-vp+passive
    conjoin-clause-vp conjoin-multiple-edges
    conjoin-two-edges conjoin/2 conjunction-glue
    conjunction-heuristics conjunction-incompatible-labels
    conjunction-just-to-its-left conjunctions
    cons-resource-remaining consider-converting-title-to-person
    consider-debris-analysis consider-finishing-section-from-paragraph
    consider-morphology-based-edges consistent-with-parent
    consol-remove-dups consonant? constant-unknown-word
    constituent-edge-with-value constituent-reader
    constituent-walker constituents-between constrain-blists
    construct-cfr construct-composite-label/2-elements
    construct-date construct-disambiguating-category-name
    construct-exploded-tree-family construct-form-cfr
    construct-fsa-for-pw construct-hyphenated-word-pair
    construct-mdata construct-number construct-pattern-item
    construct-referent construct-self-lattice-point
    construct-stem-form construct-syntax-cfr
    construct-temporary-number constructed-eft-label?
    contains-atom contains-conjecture-phrase
    contains-exp-result-phrase contains-known-result-phrase
    contains-list contains-methodology-phrase contains-modal
    contains-motivation-phrase contains-new-fact-phrase
    contains-sem-in-bindings? contains-sem? contains-some-of
    contains-string contains-type? ddm-util:contains-whitespace
    content-string contents contents-of-doc-set
    context-needs-clause? context-sensitive-rule-completion
    context-sensitive-rule? contextual-description
    contextual-interpretation continuation-after-pnf-returned-nil
    continuation-from-state/s? continue-digit-sequence-after-comma
    continue-digit-sequence-after-hyphen
    continue-digit-sequence-after-period
    continue-digit-sequence-after-through
    continue-from-sdm/analyze-segment continue-scan-next-pos
    continue-token continue-unpacking-lexical-entry
    continue-with-rest-of-files continuous-edges-between
    contrast conventional-individuals-extend-dh-entry
    convert-bio-entity-to-protein convert-clause-to-reduced-relative
    convert-collection-of-names-to-single-name
    convert-determiner-value-to-policy
    convert-edge-to-one-word-characterization
    convert-mixed-pattern-edges-to-labels
    convert-ordinary-word-edge-to-proper-name
    convert-pattern-edges-to-labels convert-referent-to-individual
    convert-simple-to-referential-category
    convert-sparser-to-mumble-irregulars
    convert-to-canonical-name-form
    coordinate-chomsky-adjunction-multiple-lhs copula-rule?
    copula-v-adjective-ambiguity copula-verb? copular-vp
    copy-anonymous-variable copy-autodef copy-binding
    copy-bracket copy-bracket-assignment copy-category
    copy-category+value copy-category+variable
    copy-category-operations copy-cfr copy-citation
    copy-composite-referent copy-da-arc copy-da-rule
    copy-da-trie-data copy-daughter-edge
    copy-disjunctive-lambda-variable copy-dl-variable+value
    copy-document-stream copy-document-style copy-edge
    copy-edge-spec copy-edge-vector copy-end-vertex
    copy-exploded-tree-family copy-form-arc copy-gap-arc
    copy-grammar-module ddm-util:copy-hash-table
    copy-immediate-constituent-pattern copy-indiv-minus-variable
    copy-individual copy-individual-changing-type
    copy-k-method copy-label copy-label-arc
    copy-lambda-variable copy-lattice-point
    copy-mixin-category copy-model-category copy-morph-arc
    copy-paragraph-structure copy-pattern-item copy-pnf-state
    copy-polyword copy-polyword-arc copy-position
    copy-psi copy-realization-node copy-referential-category
    copy-rule-set copy-rule-trie copy-scan-pattern
    copy-scan-pattern-state copy-scan-pattern-transition
    copy-schematic-rule copy-section-marker
    copy-segment-heuristic copy-start-vertex
    copy-subcat-pattern copy-subtype-lattice-point
    copy-subtyped-category copy-top-lattice-point copy-trie
    copy-unit copy-unknown-word/s-arc
    copy-values-up-to-binder copy-variable+value copy-vertex
    copy-vertex-base copy-word copy-word-arc
    corpus-bound-variable corresponding-krisp-category
    corresponding-lattice-point corresponding-obo
    corresponding-unit-of-subtype could-be-the-start-of-a-sentence
    count-brackets count-how-many-at-each-frequency-count
    count-in-document count-lines-in-system
    count-sets-of-lines-newline-fsa count-vowels
    count-word-frequencies cover-scare-quotes
    coverage-dispatch coverage-over-region
    covered-by-nearby-edge cr-head cr-others
    create-and-thread-trie-for-pattern create-article-corpora
    create-collection create-corpus-directory
    create-dependency-pair create-discourse-entry
    create-dotted-intermediaries-of-nary-rule
    create-entry-in-discourse-history create-event-np-relation
    create-event-relation create-ford-motor-company
    create-full-rule-trie create-howcomp create-ifcomp
    create-new-dependencies create-partitive-np
    create-partitive-wh-relativizer
    create-predication-and-edge-by-binding
    create-predication-and-edge-by-binding-and-insert-edge
    create-predication-by-binding create-punctuation-edge-rule
    create-raw-string create-residue-from-amino-acid-position
    create-residue-on-protein create-rigid-discourse-entry
    create-sequence create-short-conjunction-edge-if-possible
    create-slash-separated-string create-snapshot-directory
    create-thatcomp create-top-level-call create-wakil
    create-wh-nominal-and-edge-by-binding-and-insert-edge
    create-when-where-relative create-whethercomp
    cross-index-node-to-top-point csemtree ctree
    cur-string cure-semantics-directory-pathname
    current-constituent-edges current-date current-day
    current-day-of-week current-incremental-state
    current-month current-peg current-script
    current-sentence current-situation current-string
    current-temporal-index current-year cv-plist
    cv-type cv-variable cwlft-cont ddm-util:d d1
    d10 d11 d2 d3 d4 d5
    d6 d7 d8 d9 da-action-description
    da-action-fn da-arc-p da-is-s-vp da-name
    da-pattern-description da-pattern-less-than da-plist
    da-rule-cycle da-rule-named da-rule-p
    da-trie-data-p da-trie-data-plist
    da-trie-data-table-of-first-labels
    da-trie-data-table-of-labels-anywhere da-trie-data-uid
    da/look-under-edge da/look-under-edge/leftwards
    da/look-under-edge/rightwards da/look-under-edge/scan-edges
    da/prefix-dispatch/determiner da/preposed+s
    da/preposed+s/prep ddm-util:date-&-time-as-formatted-string
    ddm-util:date-as-formatted-string date-is-in-month daughter-state
    daughters-of-category ddm-util:day-&-month-as-formatted-string
    ddm-util:day-month-&-year-as-formatted-string ddm-util:dbind dbs-no-segment
    dbs-segment-pending dcr de deactivate-edge
    deactivated? deal-with-unhandled-unknown-words-at
    deallocate-binding deallocate-cons-tree
    deallocate-current-article deallocate-individual
    deallocate-klist deallocate-kons
    deallocate-paragraph-structure deallocate-psi
    deallocated-binding? deallocated-individual?
    deallocated-psi? debris-analysis-setting
    declare-all-existing-individuals-permanent
    declare-category-instances-permanent decode-additional-rules
    decode-and-instantiate-primed-verb decode-binding
    decode-binding-exp-pair decode-binds decode-bracket
    decode-category-parameter-list
    decode-category-specific-binding-instr-exps
    decode-category-specific-binding-instr-exps/plist
    decode-category-to-instantiate decode-copy
    decode-da-action decode-da-pattern
    decode-da-referent-expression decode-daughter
    decode-edge-over-whole-span-exp decode-etf-rule-case
    decode-eval decode-exp-as-ref-category
    decode-file-expression/pathname decode-for-find-&-index
    decode-function decode-head decode-index-field
    decode-index-field-aux decode-instantiate-individual
    decode-instantiate-individual-with-binding
    decode-list-referent-expression decode-list-referent-expressions
    decode-method decode-multiple-mumble-specs
    decode-mumble-spec decode-obo-isa-field
    decode-obo-properties decode-one-mumble-spec
    decode-pattern-element-expression decode-rdata
    decode-rdata-head-data decode-rdata-heads
    decode-rdata-mapping decode-referent-exp
    decode-referent-exp1 decode-referent-term
    decode-rest-of-index-field decode-rspec-type-spec
    decode-scan-pattern-definition decode-shortcut-rdata
    decode-shortcut-var-spec decode-slashed-label
    decode-subcat-slots decode-subcategorization-parameter-list
    decode-subtype decode-value-for-primitive-v/r
    decode-value-for-var/list decode-value-for-variable
    decode-var-in-cats-vars decode-variable-name
    decode/check-value ddm-util:decoded-to-encoded-time
    decompose-prepositional-phrase decompose-psi-by-rnode
    dectest dectests ddm-util:deep-copy deep-copy-individual
    def-amino-acid def-bio def-bio/expr def-category
    def-category/expr def-category/expr/toplevel
    def-cell-line def-cell-loc sparser:def-cfr def-cfr/expr
    sparser:def-cfr/multiple-rhs def-cfr/multiple-rhs/expr
    def-constituent-pattern def-csr def-csr/expr
    def-family def-family-with-id def-form-category
    def-form-rule def-form-rule-to-ap
    def-form-rule-to-ap/expr def-form-rule/expr
    def-form-rule/resolved def-indiv-with-id def-individual
    def-individual/no-indexing def-k-function def-k-method
    sparser:def-logical-pathname def-named-bio-individual def-obo-term
    def-obo-term/expr def-pathway def-pathway/expr
    def-phospho-amino-acid def-phospho-amino-acid/expr
    def-pnf-transition def-pnf-transition/expr
    def-ras2-protein def-rate-of-change-unit
    def-rate-of-change-unit/expr def-rspec def-rspec/expr
    def-section def-section/expr def-synonym
    def-syntax-rule def-syntax-rule/expr def-text-relation
    def-text-relation/expr def-timezone sparser:def-trace-parameter
    def-trace-parameter/expr def-word def-word/expr
    default-value-restrictions define-2010-words-frequency-data
    define-abbreviation define-additional-realization
    define-adjective define-adverb
    define-after-analysis-action define-amount-as-level
    define-an-individual define-approximator/adverbial
    define-approximator/determiner define-attribute
    define-autodef-data define-autodef-tableau define-bio
    define-bracket define-bracket-citation
    define-bracket/expr define-calculated-day
    define-calulated-time define-canonical-category
    define-category define-category-princ-fn
    define-category/expr define-cellular-location define-cfr
    define-cfr/resolved define-change-in-amount-noun/down
    define-change-in-amount-noun/up define-change-in-amount-verb/down
    define-change-in-amount-verb/up define-citation
    define-citation/expr define-collection
    define-colon-delimited-header-label define-color
    define-comparative define-compass-point
    define-completion-action define-conjunction
    define-constituent-pattern define-context-variable
    define-context-variable/expr define-csr define-da-rule
    define-debris-analysis-rule define-debris-analysis-rule/expr
    define-demonstrative define-dependent-location
    define-determiner define-discourse-adverbial
    define-disjunctive-lambda-variable define-document-stream
    define-document-style define-document-style/expr
    define-drug define-dummy-word/expr define-edge-fsa
    define-empty-html-tag/expr define-epistemic-collector
    define-epistemic-collector/expr define-event-frequency
    define-exploded-tree-family define-exploded-tree-family/expr
    define-export-routine define-family define-family-with-id
    define-focusing-adverb define-form-category/expr
    define-form-rule-from-schema define-function-term
    define-function-word define-grammar-module
    define-grammar-module/expr define-greek-letter
    define-header-label define-header-label/expr
    define-height define-html-attribute define-html-tag
    define-indefinite-pronoun define-indexical-variable
    define-indexical-variable/expr define-individual
    define-individual-with-id define-intensifier
    define-interfering-rules define-interior-action
    define-interior-of-paired-punctuation
    define-interior-of-paired-punctuation/expr
    define-invisible-annotation-tag define-invisible-markup
    define-invisible-markup-pair define-isolated-function-word
    define-lambda-variable define-length
    define-list-of-symbols-as-verbs define-lots-of-spaces
    define-main-verb define-marker-category
    define-markup-tag-pair define-markup-tag-pair/expr
    define-meal-time define-mixin-category
    define-mixin-category/expr define-modal define-modal/expr
    define-month define-name-creator define-name-word
    define-name-word/actual define-named-bio-individual
    define-named-individual-with-synonyms
    define-named-individual-with-synonyms/expr define-new-word
    define-no-space-pattern define-no-space-pattern/expr
    define-no-space-prefix define-number
    define-number-of-spaces define-number-of-spaces/expr
    define-or-find-individual define-ordinal
    define-per-run-init-form define-phase-of-day
    define-pnf-state define-polyword
    define-polyword-any-words define-polyword/expr
    define-position-in-process define-preposition
    define-pronoun define-protein define-punctuation
    define-punctuation/expr define-qualitative-age
    define-quantifier define-quantity define-rate-of-change
    define-reactome-hgnc-proteins define-realization
    define-realization-scheme define-reflection-on
    define-relative-time-adverb define-report-verb
    define-resource define-resource/expr
    define-rewriting-form-rule define-scalar-quantifier
    define-scan-pattern define-scan-pattern-state
    define-season define-section-marker
    define-section-marker/expr define-section-marking-word
    define-segment-finished-action define-segment-finished-action/expr
    define-segment-heuristic define-segment-heuristic/expr
    define-sentence-corpus define-sentence-corpus/expr
    define-sequence define-sequencer/determiner
    define-sequencer/preposition define-sgml-tag
    define-sgml-tag/expr define-single-capitalized-letter
    define-singular-protein define-size define-sort-function
    define-sp-transition define-sp-transition-object
    define-special-printing-routine-for-category
    define-special-printing-routine-for-category/expr
    define-standalone-direction define-standard-verbs
    define-state define-state-classification
    define-state/expr define-subcat-patterns
    define-subtype-derived-category define-summary-grammar-module
    define-superlative define-switch-state
    define-template-verb define-the-initial-scan-pattern-state
    define-time-of-day define-to-be-whitespace
    define-treetop-snapshot define-treetop-snapshot/expr
    define-type-category-constructor
    define-type-category-constructor/expr define-unit-of-measure
    define-variables define-ward-direction define-weekday
    define-wh-pronoun define-width
    define-with-all-instances-permanent define-word
    define-word/expr define-year defines-phrase-boundaries?
    definite-determiner? definite-np?
    defnp/extract-referent-from-discourse-entry ddm-util:defobject
    defscript ddm-util:defsubst sparser:deftrace deftrace/expr
    delete-abbreviation delete-adj-cfr delete-ca-action
    delete-category delete-cfr delete-cfr/expr
    delete-cfr/symbol delete-completion-action
    delete-existing-bracket-assignments delete-generic-treetop-action
    delete-noun-cfr delete-pnf-transition delete-polyword
    delete-rules-of-category delete-verb-cfr
    delete/abbreviation delete/autodef delete/category
    delete/cfr |DELETE/CFR#| delete/cfr/rs
    delete/document-stream delete/document-style
    delete/exploded-tree-family delete/grammar-module
    delete/individual delete/individual/key/hash
    delete/individual/seq-keys delete/linguistic-object
    delete/polyword delete/scan-pattern
    delete/scan-pattern-state delete/section-marker
    delete/sgml-tag delete/simple-list delete/sp-transition
    delete/traversal-action delete/word
    delimit-and-collect-successive-chunks
    delimit-and-label-initial-wh-term delimit-next-chunk
    delta dependencies dependency-pair-value
    dependency-pair-variable dependency-value
    dependency-variable deref-rdata-word
    dereference-binding-expressions dereference-defnp
    dereference-proper-noun dereference-shortened-name
    dereference-variable derived-from-text-relation?
    describe-bracket-assignment describe-gmod
    describe-individual describe-rule-ids design
    designate-buffer-refilling-routine ddm-util:designate-list
    designate-sentence-container det-prep-poss-or-adj?
    detach-edge detect-and-omit-sentence-sgml-tags
    detect-and-process-invisible-markup detect-early-information
    determine-discourse-role determine-edge-form-for-state-changes
    determine-from-from-phrasal-state determine-head-referent
    determiner-completion-heuristic determiner-noun
    determiner? dev/e dev/s di
    dictionary/morphology-frequency-counts
    did-we-forget-any-unreaped-individuals? diff-the-comlex-word-lists
    different-bracketing different-span-different-label
    dig-for-embedded-which digit-char? digit-fsa
    digit-sequence? digit? directory-p disable-cfr
    disambiguate-head-of-chunk disambiguate-name-from-context
    disambiguated-variable disconnect-named-object
    disconnect-uncategorized-name discourse-entry
    discourse-role disjunctive-lambda-variable-p
    dispatch-conj-by-multiplicities dispatch-off-capitalization-data
    dispatch-on-rule-field-keys
    dispatch-on-single-span-interior/angle-brackets
    dispatch-on-unary-ref-actions display sparser:display-all-cfrs
    display-bracketed-segments display-bracketing
    display-cat-org display-categories-below
    display-category-tree display-chart
    display-chart-brackets display-chart-edges
    display-chart-state display-chart-terminals
    display-chunks display-conjunctions display-contents
    display-current-segment display-document-state
    display-edge-as-tree display-edge-as-tree/symbolic-syntax
    display-edge-as-tree/syntax display-edge-category
    display-edge-vector display-edge-vector/kcons
    display-edge-vector/vector display-grammar-module
    display-name? display-polyword display-position-array
    display-pw-in-tree display-rules
    display-segments-in-paragraph display-sent-parse
    display-sent-results display-sorted-results
    display-space-b/w-brackets-array display-subcat-ambiguities
    display-subcategorization display-top-bio-terms
    display-with-subcs display-word
    display-word-frequency-profile display-word-in-lookup-buffer
    display-word-in-tree display-words-one-per-line
    distinct-reach-verb-cats distribute-conjunctions
    distribute-mdata-by-pos distribute-pp-to-conjoined-clauses
    distribute-pp-to-first-conjoined-clause
    divide-and-recombine-ns-pattern-with-colon
    divide-and-recombine-ns-pattern-with-slash divide-colon-sequence
    divide-tts-and-patterns djns-article? dl-variable+value-p
    dli-eq? dli-parent dli-ref-cat dlvv-plist
    dlvv-value dlvv-variable dm&p-setting
    dm/analyze-segment do-any-category-fsas do-article
    do-boundary/begins-after do-boundary/begins-before
    do-boundary/ends-after do-boundary/ends-before
    do-client-translations do-conceptual-analysis-off-new-treetop
    do-contextual-interp do-da-ref-expression
    do-document-as-stream-of-files do-domain-modeling-and-population
    do-early-rules-sweep do-early-rules-sweep-between
    do-edge-level-fsas do-explicit-rule-completion
    do-external-bindings do-file do-forest-level
    do-fsa-field do-fsa/s-for-edge
    do-generic-actions-off-treetop do-html-tag
    do-html-tag/end do-just-terminal-edges do-load-test
    do-multiple-initial/left do-next-file
    do-normal-segment-finished-options
    do-note-text-relations-in-segment do-over-ordered-chain
    do-paired-punct-cfr do-paired-punctuation-interior
    do-pending-edges do-pnf-edge do-polyword-fsa
    do-punctuation do-punctuation-from-continue
    do-referent-and-edge do-reify-implicit-individuals-in-segment
    do-relation-between-first-and-second
    do-section-level-after-actions do-single-word-name
    do-single/left do-smart-frequency-count do-source
    do-strong-domain-modeling do-syntax-rule/resolved
    do-the-last-things-in-an-analysis do-treetop
    do-treetop-loop do-treetop-triggers
    do-word-canonical-form do-word-fsas/only-known
    do-word-level-fsas doc-index doc-location
    doc-set document-stream-named document-stream-p
    document-style-named document-style-p document-tree
    domain-priority-triple? dont-check-rule-form-for-etf-named
    dont-save-article-semantics dont-show-new-verb-definitions
    dot dot-state dotted-rule dotted-rule-hack
    dotted-rule? double-country-check doubled-consonants?
    downcase-entire-word/word-buffer downcase-first-letter/word-buffer
    downcase-letter/word-buffer downcase-uppercase-letters/word-buffer
    draw-paragraphing-conclusions drs ds-directory
    ds-file-list ds-menu-item ds-name ds-style
    ds-substreams ds-unified-content ds/do-dispatch
    ds/do-explicit-file-list ds/do-files-in-directory
    ds/do-substreams dsc dtg-dir dtn
    duplicate-rule duplication-check dvar-category
    dvar-instances dvar-name dvar-plist
    dvar-v+v-table dvar-value-restriction dvar-variables
    e sparser:|E#| e/ends earliest-in-the-discourse
    early-rule-criteria ecomplete ed-form-of-verb
    |EDGE#| edge-already-on-position
    edge-begins-with-the-word edge-between edge-cat-name
    edge-category edge-category-to-keyword edge-constituents
    edge-denotes-interesting-object edge-ending-at
    edge-ending-position edge-ends-at edge-ends-here
    edge-for-literal? edge-for-referent edge-form
    edge-form-adjustment edge-form-name
    edge-interaction-with-quiescence-check edge-introduces-brackets
    edge-is-still-in-chart edge-just-to-left-of
    edge-just-to-right-of edge-left-daughter edge-length
    edge-mention edge-of-dotted-intermediary edge-over-aux?
    edge-over-bounding-word? edge-over-just-segment-head
    edge-over-last-word-of-segment edge-over-literal?
    edge-over-proper-name edge-over-punctuation?
    edge-over-segment edge-over-segment-head
    edge-over-segment-prefix edge-over-segment-suffix
    edge-over-there? edge-p edge-pattern-to-cats
    edge-position-in-resource-array edge-precedes
    sparser:edge-referent edge-rep edge-right-daughter
    edge-rule edge-scopes-word edge-sort
    edge-spanned-words edge-spanning edge-spans-position?
    edge-spans-region edge-spec-category edge-spec-direction
    edge-spec-dominating edge-spec-form edge-spec-p
    edge-spec-preposed edge-spec-referent edge-spec-target
    edge-start-index edge-starting-at edge-starting-position
    edge-starts-at edge-starts-at-left-boundary?
    edge-starts-at-segment-boundary edge-string
    edge-subsumed-by-edge-in-list edge-subsumes-edge?
    edge-to-its-left edge-to-its-left/jump-word
    edge-to-its-right edge-to-left-of-head edge-used-in
    edge-vector-contains-edge? edge-vector-p
    edge-with-label-at/ends-there? edge-within-da-record
    edge/word-to-the-left edge/word-to-the-right edges-abutt
    edges-after edges-all-chain edges-before
    edges-before-chunk edges-between edges-ending-at
    edges-have-same-span? edges-higher-than
    edges-just-to-left-of edges-on-ev-above edges-starting-at
    edges-under edges/ending-at edges/starting-at
    edit effective-pronoun-value-restriction
    effective-words-given-edges eft-case-rule-form
    elevate-form-given-subcat
    elevate-fully-spanning-category/parentheses
    elevate-head-edge-form-if-needed elevate-measurement-within-parens
    elevate-spanning-edge-over-paired-punctuation ddm-util:else |EM#|
    embedded-statement? ddm-util:emit-line ddm-util:emit-line-continue
    emit-list-start emit-list-start-continue
    emit-standard-xml-close emit-standard-xml-header
    empty-this-mutant enable-cfr encode-mention-location
    end-of-ns-region end-of-segment-measurements
    end-of-sentence-processing-cleanup end-of-source-check
    end-pos end-section end-sgml-section
    end-sgml-section/sm end-vertex-p ends-at-char
    ends-at-pos ends-in? ensure-edge-consistent-with-chunk
    ensure-k-function ddm-util:ensure-list ensure-ont-wn-packages
    entities entities-in entities-in-sentence
    entities-with-names entity-p
    entry-for-out-of-band-character entry-given-char-code
    eos-sweep-loop epredict eql-specializer-p
    error-trapped-scan-and-core escan
    establish-annotation-hidden-markup establish-binding-resource
    establish-bio-discourse-relations establish-character-source/file
    establish-character-source/file/at-filepos
    establish-character-source/open-file
    establish-character-source/string
    establish-character-translation-protocol
    establish-companies-as-part-of-the-background
    establish-discourse-relations
    establish-equivalence-to-known-lowercase-word
    establish-hidden-markup-tag establish-hidden-section
    establish-initiating-hidden-markup
    establish-kind-of-chart-processing-to-do establish-multiplier
    establish-pnf-routine establish-properties-of-new-digit-sequence
    establish-properties-of-new-number-of-spaces
    establish-referent-of-pn
    establish-referents-of-collection-of-names establish-rule-set-for
    establish-section-within-document
    establish-structural-discourse-relations
    establish-terminating-hidden-markup
    establish-type-of-edge-vector-to-use establish-unknown-word
    establish-version-of-assess-edge-label
    establish-version-of-capitalization-dispatch
    establish-version-of-complete establish-version-of-def-word
    establish-version-of-look-at-terminal
    establish-version-of-next-terminal-to-use
    establish-word-frequency-classification etf-cases
    etf-description etf-form-substitution-label etf-labels
    etf-name etf-parameters etf-type ev-boundary
    ev-direction ev-edge-vector ev-edges ev-marker
    ev-number-of-edges ev-plist ev-position
    ev-top-edges ev-top-node ev/e ev/s
    event-relations ever-appears-in-function-referent
    evidence-for evidence-of-reference
    evidence-that-np-denotes-an-individual?
    exact-title-of-current-section-is examine-capitalized-sequence
    excise-value-entry execute-da-action
    execute-da-action-function execute-da-referent-expressions
    execute-da-trie execute-edge-over-whole-span-exp
    execute-one-da-rule execute-one-one-rule
    execute-schematic-da-action execute-trie-middle-out
    execute-triple existing-cfr expand-conjunctions
    expand-definite-references-in-context-if-needed expand-krisp
    expand-logical-pathname expanded-reach-events
    expansion-boundary? expect-digit-delimiter-as-next-treetop
    experimental-result-of experimental-result-phrase
    experimental-result? experimental-results
    explicit-plurals explicit-reference
    exploded-tree-family-named exploded-tree-family-p
    export-as-value-name-for export-binding
    export-binding-as-return-value export-bindings/recursively
    export-doc-count export-etf export-function
    export-individual export-individual-as-return-value
    export-mixin-category export-name-as-category
    export-name-for export-object export-object-toplevel
    export-psi export-psi-as-return-value
    export-referential-category export-salient-objects
    export-tuple export-v+v export-v+v-as-return-value
    expunge-unknown-words extend-discourse-situation
    extend-entry-in-discourse-history extend-invisible-markup-trie
    extend-psi-by-binding extend-relations extend-rule-trie
    extend-token-beyond-peeked-chars extend-trie-for-rest-of-pattern
    extend-wh-object extent-trie
    extract-callisto-conjunction-data extract-callisto-data
    extract-characters-between-positions
    extract-d-m-y-dow-from-system-time
    extract-ms-from-time-report-string
    extract-numbers-from-hyphenated-number extract-obo-table-to-list
    extract-plurals-from-comlex-entry extract-relation
    extract-string-from-char-buffers extract-string-spanned-by-edge
    extract-subject-from-clause extract-table-entries
    extract-titles-from-other-elements extract-up f
    f/i/seq-keys f/wf failed-pp-attachment
    fake-find-word fake-finish-token fasl-file fcite
    figure-7 figure-out-where-to-start-on-next-pos
    file-location filename-ends-in files-in-directory
    fill-allowable-proteins fill-compatible-slot
    fill-in-between-subject-and-final-verb fill-in-mention
    fill-inherited-vars fill-whitespace
    fill-whitespace-and-loop filter-bindings filter-bl
    filter-by-rule-strength filter-hapax filter-literals
    filter-out-background-companies/dh filter-out-cv
    filter-patterns filter-rules-by-local-competition
    filter-schemas filter-trips-def
    filter-vector-for-valid-edges final-numbers-in-string
    final-tt/category find-all find-all-mentions
    find-ambiguous-protein-names find-base-np-vp-edge
    find-bce find-best-recent
    find-binding-dependencies-for-items find-binding-dependency
    find-binding-dependency-in-sentence-mentions
    find-binding-for-value find-bindings-value-for-var
    find-biochemical-entities find-bp find-bps
    find-bracket find-by-apply-bindings find-c+v
    find-cfr find-chunks find-collection
    find-companies-with-name find-conjunction-item-mention
    find-consistent-edges find-copular-vp
    find-corpus-instances find-corpus-sents find-dependency
    find-dependent-edge find-djns-assession-number-in-region
    find-edge-for-wh-other find-form-cfr find-form-rule
    find-head-edge find-head-word find-in
    find-individual find-individual-for-gloss
    find-lattice-point-with-variables
    find-lattice-point-with-variables1 find-lattice-subordinate
    find-lexical-edge-with-cat find-lp-daughter
    find-mention-for-wh-element find-mentions
    find-most-extended-lattice-point-for-variables find-multi-vars
    find-multiple-upa-entries find-new-words
    find-non-copular-vps find-np-type-edge find-number
    find-object-vars find-or-define-kind
    find-or-make-amino-acid-pair find-or-make-c+v
    find-or-make-c3-state find-or-make-category
    find-or-make-category-object find-or-make-compound-type
    find-or-make-dlvv find-or-make-dlvv-from-var-val
    find-or-make-dlvv-ht-from-variable find-or-make-document
    find-or-make-fsa-field find-or-make-individual
    find-or-make-initial-pw-state find-or-make-latents-wrapper
    find-or-make-lattice-description-for-cat-list
    find-or-make-lattice-description-for-collection
    find-or-make-lattice-description-for-individual
    find-or-make-lattice-description-for-ref-category
    find-or-make-lattice-subordinate
    find-or-make-next-lp-down-for-variable find-or-make-next-pw-state
    find-or-make-number find-or-make-psi
    find-or-make-psi-for-base-category find-or-make-psi-for-subtype
    find-or-make-psi-with-binding find-or-make-schematic-rule
    find-or-make-self-node find-or-make-sentence-corpus
    find-or-make-syntactic-function-data
    find-or-make/capitalized-word-to-fit-position
    find-or-make/exploded-tree-family find-or-make/individual
    find-paragraphs-containing-string find-plausible-subcat-patterns
    find-pobj-edge find-point-of-divergence-and-extend-trie
    find-preposition find-pronoun-in-lifo-instance find-psi
    find-psi-at-lattice-point
    find-psi-binding-var-to-value-in-list-of-lp find-psi-with-binding
    find-reach-bio-processes find-reach-processes
    find-reach-protein find-reach-proteins find-reach-rule
    find-reach-sentence find-rightmost-edge
    find-rule-for-edge-pair find-rule-in-category
    find-rules-by-head-pred find-rules-with-literal
    find-self-node find-sem-type-instances
    find-semantic-rules-ending-with find-semantic-rules-starting-with
    find-sentence-subject find-sequence find-single-unary-cfr
    find-subcat-labels find-subcat-pattern
    find-subcat-patterns find-subcat-var find-subcat-variable
    find-subcat-variables find-subcat-vars find-subject-vars
    find-subtype find-super-category-with-variables
    find-target-satisfying find-text-relation-instance
    find-tt-in-region find-unary-cfr/referent
    find-unary-rules find-undef-std-prot-comp find-upa-entry
    find-v+v find-var-from-var/name find-variable
    find-variable-for-category find-variable-from-individual
    find-variable-in-category find-variable-in-category/named
    find-variable-in-mixins find-variable-in-psi/named
    find-verb find-verb-at-mvb-end find-wh-clause
    find-word find-word-in-tt-alist
    find-year-from-last-two-digits find/binding
    find/binding-of-variable find/collection
    find/company-with-name find/edge-with-category
    find/individual find/individual/key/hash
    find/individual/seq-keys find/location-with-name
    find/make-disjunctive-lambda-variable-for-category
    find/make-lambda-variable-for-category
    find/make-silent-nw-for-word-under-edge find/name-word
    find/named-object-with-name find/person-with-name
    find/section-marker find/sgml-tag find/simple-list
    find/uncategorized-name finish-cat finish-element
    finish-lambda-var finish-ongoing-paragraph finish-token
    finish-var fire-setting first-in-the-chain
    first-item-in-article first-item-in-its-paragraph
    first-item-of-sequence first-of
    first-or-second-word-is-bracket-punct first-paragraph
    first-position-with-edges first-section first-sentence
    first-sentence-constituent first-situation
    first-two-groups first-word-in-segment
    first-word-is-bracket-punct first-word-of-a-company
    fits-criteria-for-simple-individuals fix-cell-loc
    fix-da-ending-pos fix-doubled-colon fixed-at-runtime
    fixed-value ddm-util:flatten ddm-util:flattenc
    flesh-out-paragraph/daughter flesh-out-paragraph/first-section
    flesh-out-paragraph/sibling flush-binary-cfr-from-tables
    flush-cfr-from-psg-tables flush-just-polyword-cfr-from-tables
    flush-multiplier-table-entry flush-nary-cfr-from-tables
    flush-ongoing-pptt-and-continue
    flush-sp-transition-from-multiplier-table
    flush-unary-cfr-from-tables flush-unsupported-terms-in-cfr
    fold-in-initial-wh-adjunct fold-in-preposed-auxiliary
    fold-wh-into-statement follow-out-matched-arc
    follow-out-matched-arc/leftwards followed-by-of
    followed-by-verb fom-lattice-description
    fom-realization-scheme fom-subcategorization
    for-forms-in-file force-case-of-word-string
    forest-level-parsing-finished form-all-pairs form-arc-p
    form-cat-name form-category form-category?
    form-dispatch-setup form-ids/leftward form-ids/rightward
    form-label-corresponding-to-subcat form-multiplier
    form-of form-rule-completion
    form-rule-completion/explicit-lhs form-rule-head-category
    form-rule? form-stem/strip-ed
    form-stem/strip-ed/short-word form-stem/strip-ing
    form-stem/strip-ly form-stem/strip-s
    form-triples-from-pairs format-edge-pair format-item
    format-triple format-words-between
    format-words-in-segment formulate-by-category
    formulate-individual-for-variable frequency-table-entry
    frequency-table-to-list-of-symbols fries-match
    fries-match-wd fsr function-word?
    further-to-the-right gap-arc-p gate-grammar
    gen-bracket-symbol gen-cfr-symbol generalization-tester
    generalization-tester-1 generalize-given-position
    generalize-individual generalize-segment-edge-form-if-needed
    generalize-vg-segment-edge generalized-possession
    generic-treetop-action get-action get-all-family-syns
    get-all-semtrees get-another-comma-chain-conj
    get-best-protein-id get-best-protein-name get-binding-of
    get-bio-synonyms get-body get-bound-vars
    get-bracket-assignment-for-word get-bracketing-from-string
    get-by-name get-c+v get-cat-tree-realizations
    get-category get-category-abbreviator
    get-category-individual get-category-realizations
    get-comlex-entry get-compound-dli
    get-contents-of-current-article get-dli get-document
    get-edge-char-offsets-and-surface-string get-entities
    get-family get-family-member-names get-forms-from-file
    get-from-bucket get-head get-head-ref-from-rule
    get-human-species get-icp ddm-util:get-indentation
    get-indexical-variable get-lambda-ref-edge-from-pred-edge
    get-last-run-from-buffer get-latents-wrapper get-lp
    get-mention-items get-mentions get-mitre-id
    get-month get-mumble-side-of-bidir
    get-mumble-word-for-sparser-word get-name-referent-of-odd-edge
    get-next-treetop get-next-treetop/leftwards
    get-non-uniprot-name-from-reactome get-np-head-edge
    get-obo get-obo-by-id get-orth get-pmc-id
    get-pmid get-protein get-protein-family-ht
    get-protein-synonyms get-punct-symbol
    get-reach-entities-strings get-reactome-active
    get-reactome-names get-reactome-proteins
    get-realization-node get-ref-subcategorization
    get-relations get-resource get-rule-pred
    get-rules get-schematic-word-rule
    get-segment-finished-actions get-segments get-sentence
    get-sentence-corpus get-sentence-individual-strings
    get-sentence-process-strings get-sentence-subject
    get-sparser-reach-events get-sparser-reach-events-base
    get-sparser-reach-events-from-sentence-individuals
    get-sparser-word-for-mumble-word get-standard-id
    get-state get-stmt-vars get-string-from-edge-word
    get-subcategorization get-subject-from-s-edge
    get-surface-string-for-individual get-syntactic-function-data
    get-tag get-treetops get-trips-concept
    get-trips-wn-lemma get-tt-count get-undefined-ns-patterns
    get-uniprot-name-from-reactome get-upa-string
    get-variable-category-pairs-for-var-name get-verb-edge
    get-weekday get-word-for-prep
    get-word-string-from-position get-year gload
    gloss-ba-interpretation gloss-interpretation
    gmod-cf-rules gmod-citations gmod-cs-rules
    gmod-dossier/s gmod-files gmod-form-rules
    gmod-non-terminals gmod-object-types gmod-parent-module
    gmod-polywords gmod-princ-name gmod-public?
    gmod-sub-modules gmod-symbol gmod-syntax-rules
    gmod-words go-back-to-scanning grade-sentence-tt-counts
    grammar-module-named grammar-module-p grammar-tests
    greek-character-for green-string grok-pass-one
    grok-pass-three grok-pass-two grok-setting
    gross-infinitive-chunker-test group-by
    group-triples-by-span ha-segment-heuristics hal
    handle-any-anaphora handle-attribute-of-head
    handle-leading-brackets-off-fsa-edge handle-mitre-link
    handle-parentheses handle-period-as-initial
    handle-pronoun handle-trailing-brackets-off-fsa-edge
    handle-unknown-word-as-bio-entity handle-variable-restrictions
    handle-wh-of handle-wh-other harness
    has-a-bp-id? has-a-name? has-adverb-variable?
    has-been-status? has-binding has-definite-determiner?
    has-fsa? has-mumble-mapping? has-mumble-rdata
    has-necessary-vars has-only-trivial-bindings
    has-paragraphs? has-subsections? has-supercategories?
    ddm-util:hash-counts hash-find-variable ddm-util:hashtable-to-alist
    hassle-out-display-of-split-token having-stripped-d-try-for-e
    having-stripped-g-try-for-n having-stripped-ng-try-for-i
    having-stripped-y-try-for-l head-and-ather-edges-of-binary-rule
    head-relations head-string head-word
    head-word-of-segment heuristics-apply-to-segment
    hgnc-approved-name hgnc-approved-symbol hgnc-id
    hgnc-mults hgnc-name-synonyms hgnc-names
    hgnc-previous-name hgnc-previous-symbols hgnc-pubmed-ids
    hgnc-synonyms hgnc-uniprot-id hide-parenthesis-edge
    high-priority-postmod? highest-edge
    highest-edge-ending-at highest-edge-starting-at
    highest-edge-used-by highest-edge-used-by-of-category
    highest-preterminal-at hms-groundings->sp-onts
    hookup-daughter-number-rnodes horrible-parses
    how-many-at-frequency-count ht ht-to-alist
    html-print-article-element htnull human-mnemonic?
    hyphen-routine hyphenated-string-for-pw
    hyphenated-verb+ed? |I#| i/i/sk i/i/sk-below-top
    i/r/s-make-the-rule i/r/s-multiply-through/lhs
    i/r/s-multiply-through/rhs i/r/s/-coordinate-chomsky-adjunction
    ic ic-patterns-for icp-by-percentage
    icp-constituents icp-count icp-freq
    icp-incident-count icp-over-terminals? icp-tag
    identify-chunks identify-current-sentence
    identify-header-label identify-pobj identify-preposition
    identify-relations identify-salient-text-structure
    identify-this-time-unit sparser:ie ier ierb ietf
    if-there-never-were-any-sections-do-after-para-actions iformat
    ignorable-category? ignore-comlex ignore-semantic-check?
    ignore-this-document-section ignore-this-type-of-pronoun
    ignore-unknown-words ii/simple-list
    immediate-constituent-pattern-p
    immediate-constituents/n-ary/length
    immediate-individual-categories immediate-supers
    implicit-abbreviation? in-ras2-model? inactive-ras
    incf-bucket-entry incf-word-count incident-count
    include-comlex include-grammar-module
    include-grammar-module/expr included-pronouns
    includes-a-reference includes-edge-over-literal?
    includes-edge-with-label includes-mumble-spec?
    includes-pw-start-state includes-state
    includes-suggestive-variables includes-that
    includes-tt-over-comma incorporate-composition-into-situation
    incorporate-lexicalizations-into-predicted-path
    incorporate-obo-terms incorporate-phrasal-head
    incorporate-referent-into-the-situation increment-bracket-distance
    increment-line-count increment-resource
    increment-word-frequency-entry/over-all incremental-segment-parse
    incremental-settings incrementally-parse-chunks
    incrementally-scan-segment indefinite-determiner?
    indefinite-np? indefinite-pn/np indent-spaces
    index-aux/individual index-binding-if-needed
    index-by-name index-collection
    index-company-name-to-company index-item-as-somewhere-in-a-trie
    index-lp index-lp-to-top-lp index-node-to-top-point
    ddm-util:index-object index-of-edge-in-vector
    index-of-first-character index-polyword-fsa-under-trigger
    index-section-object-to-discourse-history index-semantic-rules
    index-sequence index-sp-transition index-subcategory
    index-text-relation-instance index-text-relation-type
    index-trie-by-1st-item index-vertex index/binding
    index/collection index/individual
    index/individual/key/hash index/individual/seq-keys
    index/name-word index/permanent-individual
    index/section-marker index/uncategorized-name
    ddm-util:indexed-object-index indexical-for-state indicate-arg
    indicate-head indicated-type-of indicates-tense?
    indiv-all-supers indiv-binds indiv-bio-synonyms
    indiv-bound-in indiv-downlinks indiv-id
    indiv-not-super indiv-old-binds indiv-or-type
    indiv-plist indiv-restrictions indiv-rnodes
    indiv-type indiv-typep indiv-uid indiv-uplinks
    individual |INDIVIDUAL-BINDING#| individual-for-gloss
    individual-for-ref individual-inherits-type?
    |INDIVIDUAL-OBJECT#| individual-p
    individuals-discourse-entry
    individuals-of-this-category-are-permanent? individuals-under
    indra-post-process indra-post-process-mention
    infer-part-of-speech ing-form-of-verb
    inherit-subcat-patterns inherited-operation/find
    inherited-operation/reclaim inherits-mumble-data?
    inhibit-completion-when-subsumes init-annot2017-directory
    init-hms-directory init-phase3-directory init-psr-rules
    init-reach-directory initalize-model-collection
    initial-lowercase? initial-pattern-transition?
    initial-print-routine initial-rule-table-size initial-wh
    initial-wh? initialize-all-edges-state-vars
    initialize-article-resource
    initialize-article-semantic-file-if-needed
    initialize-bound-in-reclaimation initialize-by-current-style
    initialize-chart-state initialize-chart-state-variables
    initialize-composite-word initialize-cons-resource
    initialize-context-variables initialize-da-action-globals
    initialize-da-search initialize-discourse-history
    initialize-discourse-situation
    initialize-document-element-resources initialize-document-set
    initialize-edge initialize-edge-resource
    initialize-edge-vector initialize-fields/binding
    initialize-fields/individual initialize-fields/psi
    initialize-incremental-state ddm-util:initialize-indentation
    initialize-individuals-resource initialize-line-data
    initialize-new-flags initialize-nl-position-stack
    initialize-on-error-action initialize-paragraph-resource
    initialize-paragraph-state initialize-paragraphs
    initialize-position initialize-psi-resource
    initialize-resource initialize-scan-pattern-process
    initialize-section-resource initialize-section-state
    initialize-sections initialize-segment-state-variables
    initialize-sentence-resource initialize-sentences
    initialize-space-b/w-brackets-array
    initialize-state-of-capitalization-fsa
    initialize-state-of-morphology-fsa initialize-text-relationships
    initialize-the-invisible-markup-trie
    initialize-title-text-resource initialize-tokenizer-state
    initialize-top-lattice-point initialize-top-text-relations
    initialize-tt-state-description initialize-used-portion-of-chart
    initialize-word-frequency-data initiate-all-edges-protocol
    initiate-c3-protocol initiate-header-parsing-protocol
    initiate-incremental-cwc-protocol
    initiate-scan-for-closing-markup-tag initiate-scan-pattern-driver
    initiate-successive-sweeps initiates-polyword
    inititate-top-edges-protocol inner-edges-go-with-head-heuristic
    ddm-util:insert-commas-into-number-string insert-edge-into-vector-at
    insert-new-edge-between-daughter-and-parent
    insert-nl-and-reset-adjustment-parameters insert-nl-if-needbe
    insert-object-raised-tocomp insert-paragraph-marker
    insert-predication-edge insert-wh-nominal-edge
    install-after-paragraph-action install-contents
    install-preterminal-edge install-punctuation-edge
    install-terminal-edges install-v+v |INSTANCE#|
    instance-count instance-counter instance-history
    instantiate-predictions instantiate-reified-segment-category
    instantiate-rule-schema instantiate-section
    instantiate-section/sm ddm-util:instantiate-type
    integer-for-number integrate-into-situation
    integrate-lemma-rdata interesting-super?
    interfering-rules interleave-edge-pattern
    intermediaries-of-nary-rule intern-bracket intern-da-rule
    intern-pnf-state interp-big-mech-chunk
    interpolate-form-category-in-rhs-of-schema
    interpret-adverb+adjective interpret-adverb+verb
    interpret-as-comp interpret-as-pathway-or-complex
    interpret-control-copula interpret-for-to-comp
    interpret-in-context interpret-in-vivo-vitro
    interpret-intensifier+adjective interpret-name-as-person
    interpret-number-as-years-of-age
    interpret-open-bracket-as-segment-start interpret-pp-adjunct-to-np
    interpret-pp-as-head-of-np interpret-premod-to-np
    interpret-premod-to-verb interpret-pronoun-in-context
    interpret-s-comma-s interpret-subordinator
    interpret-to-comp-adjunct-to-np interpret-to-comp-adjunct-to-s
    interpret-transition-table-expessions
    interpret-treetops-in-context interpret-verb-as-predication
    interpretation-has-something-to-generalize? intersect-v/rs
    intersection-of-vrs intransitive? intro-edges-fwpnf
    introduce-brackets introduce-inter-segment-boundary
    introduce-leading-brackets
    introduce-leading-brackets-from-edge-form-labels
    introduce-next-word introduce-right-side-brackets
    introduce-segment-separating-brackets introduce-terminal-edges
    introduce-trailing-brackets
    introduce-trailing-brackets-from-edge-form-labels
    inverse-document-frequency ip ir irr
    is-a-boundary? is-a-form-of-passive?
    is-an-item-anywhere-in-a-trie is-basic-collection?
    is-bio-entity? is-dl-child? is-domain-adjunctive-pp?
    is-in-comlex? is-in-p is-lambda-var
    is-non-anaphor-numeric? is-object-not-subject? is-open-in
    is-parenthesis? is-passive? is-phosphorylated-protein?
    is-pp? is-pronoun? is-the-second-letter-capitalized
    is-wh-pronoun? island-driven-forest-parse
    isolated-potential-initial? item
    item-already-linked-to-entity item-in-a-known-name
    item-in-new-pattern-fits-existing-arc? items its-a-number
    its-ok-for-this-ostensible-treetop-to-be-covered itype
    itype-of itypep itypes-under iw j1
    j10 j2 j3 j4 j5 j6 j7
    j8 j9 jantest jantests
    just-bracketing-setting just-bracketing-with-comlex-setting
    just-count-the-lines-of-code just-cover-segment
    k-method-applicable-p k-method-function
    k-method-more-specific-p k-method-p k-method-specializers
    k-specializer-applicable-p kappa-1 kappa-2
    kappa-3 kappa-4 kappa-5 kappa-6 kappa-7
    kappa-8 kappa-9 kcons
    keep-sentence-tags-out-of-terminal-stream keyword-for-word
    kmakunbound knit-arc-to-next-vertex
    knit-arc-to-next-vertex/end knit-arc-to-prior-vertex
    knit-edge-into-position knit-edge-into-position/kcons
    knit-edge-into-position/vector knit-edge-into-positions
    knit-form-rule-into-psg-tables knit-in-binary-rule
    knit-in-single-term-rewrite-rule knit-into-psg-tables
    knit-parens-into-neighbor known-in-context
    known-preterminals/check-caps known-result-phrase
    known-result? known-results known-sequence
    known-subcat-pattern known-subcategorization? known-word?
    kpop kpush kraql-action-add-slot
    kraql-action-eval kraql-action-isa
    kraql-action-isa-specialize kraql-action-remove-slot
    kraql-body-aggregate kraql-body-article kraql-body-bound
    kraql-body-bp-id kraql-body-different kraql-body-isa
    kraql-body-isa-local kraql-body-item kraql-body-merge
    kraql-body-not kraql-body-protein-name kraql-body-same
    kraql-body-search-exact kraql-body-search-partial
    kraql-body-set kraql-body-slot-nbr kraql-body-slot-val
    kraql-body-slot-vals kraql-body-try kraql-filter
    kraql-indivs kraql-retrieve-individuals kraql-run
    kraql-search-helper kreclaim krisp->sexpr
    krisp-cat-reach-types ktail-cons l-triple-tests
    label-arc-p label-combines-to-its-right label-names
    label-on-chart-object label-p label-plist
    label-rule-set label-symbol labels-string
    lafst/b/look-for-close-angle-bracket/2
    lafst/b/look-for-close-angle-bracket/3 lafst/b/look-for-s/2
    lambda-abstraction-edge? lambda-variable-named
    lambda-variable-p last-item-in-ongoing-segment
    last-letter last-name-of-a-person last-of
    last-sentence last/item-of-sequence late-time-files
    latent-predicates lattice-depth lattice-point
    lattice-point-p launch-sparser-menus layout
    lc-non-boundary-word-that-may-extend-cap-seq? lc-one-line-print
    lc-word-that-may-extend-cap-seq? lcase-emit lcase-prin1
    lcase-space-prin1 leading-hidden-markup-check
    leading-hidden-markup-on-position? left-edge-for-referent
    left-edge-of-triple left-looking-category-id
    left-looking-category-ids left-looking-form-id
    left-multiword-treetop left-neighbor-is
    left-neighbor-marks-start-of-article left-side
    left-treetop-at left-treetop-at/edge
    left-treetop-at/only-edges left-whitespace-is-newline
    left-winner? leftmost-daughter-edge lemma
    ddm-util:let*-with-dynamic-extent ddm-util:let-with-dynamic-extent
    level-completed lexical-edge-at lexical-items-between
    lexical-rule? lhs-of-cs-rule lhs-of-csr
    lhs-of-form-rule lhs-of-syntactic-rule
    lift-location-out-of-theme lift-out-variablized-segment
    lift-special-case-form-from-comlex-clause
    lift-wh-element-from-nominal likely-separated-subject?
    line-data lines-in-file link-dossier-to-module
    link-in-verb link-in-verb+ing link-sub-super
    link-to-existing-children link-to-other-parents lisp-file
    list-after-paragraph-actions list-ca-actions
    list-da-actions list-document-styles list-final
    list-generic-treetop-actions list-initial
    list-instances/hash-table ddm-util:list-length*
    list-of-interior-tags/string list-per-after-analysis-actions
    list-per-run-init-forms list-type-variable? literal-edge?
    little-p-hack sparser:lload load-bio-test-sentences
    load-comlex load-delayed-dossiers load-dossiers
    load-file-p load-fries-protein-ht
    load-grammar-specific-edge-types load-hms-sentences-if-needed
    load-protein-id-hash-tables load-reach-sentences-if-needed
    load-the-grammar load-vv-tables load-workspaces
    loc local-recorded-instances local-v/r-for
    location-in-article-of-current-sentence logical-filenames
    logical-pathname-char-p long-term-already-subsumed?
    long-term-ify-mention long-term-ify/edge-referents/at
    long-term-ify/individual long-term-mention?
    longest-edge-starting-at look-ahead-for-abbreviation
    look-ahead-for-initial look-at-all-terminals
    look-at-next-terminal/shell look-at-terminal
    look-for-ambiguous-variables
    look-for-bounded-constituent-after-prep
    look-for-bounded-np-after-verb look-for-da-pattern
    look-for-da-patterns look-for-either-form-rule
    look-for-hyphen-as-next-treetop look-for-hyphenated-sequence
    look-for-hyphenated-words look-for-interior-markup-then-copy
    look-for-like-edges/both look-for-like-edges/left
    look-for-like-edges/right look-for-np-extensions
    look-for-number-rule-in-list-of-cfrs
    look-for-parent-instantiates-information look-for-prep-binders
    look-for-primed-word-else-all-properties
    look-for-short-leftward-extension
    look-for-short-obvious-conjunctions look-for-submerged-conjunct
    look-for-submerged-matching-conj-edge look-left-for-form-rule
    look-right-for-form-rule lookahead-at-pair
    lookahead-for-invisible-markup lookahead-for-sentence-tag
    lookahead-to-complete-dotted-rule lookup lookup-all
    lookup-fn-data-of-parent lookup-form-rule
    lookup-matched-tt lookup-passive-counterpart
    lookup-polyword lookup-rule/rhs
    lookup-scan-transition/make-keys lookup-semantic-rule
    lookup-semantic-rule-given-ids lookup-syntactic-rule
    lookup-the-kind-of-chart-processing-to-do lookup-unary-rule
    lookup-variable-for-value-type lookup-word-symbol
    lookup/cfr lookup/cfr/expression
    lookup/make-left-looking-form-id lookup/make-left-looking-label-id
    lookup/make-right-looking-form-id
    lookup/make-right-looking-label-id lookup/make-word-symbol
    loop-through-segment-for-some-edges loose-adjectives
    loose-adverbs loose-nps losing-competition?
    losing-to-leftwards-pp? lowercase-equivalent-letter
    lowercase-letter? lowest-edge |LP#| lp-c+v
    lp-category lp-down-pointers lp-index
    lp-index-by-variable lp-indiv-uses lp-plist
    lp-realizations lp-specializing-category lp-subnodes
    lp-subtype lp-subtypes lp-super-category
    lp-supertype lp-supertype-print-string lp-top-lp
    lp-top-psi lp-upward-pointers lp-v+v
    lp-variables-bound lp-variables-free lsetq
    lsp-break |M#| m&m-lp-find
    made-subsequence-up-to main-verb make-a-chart
    make-a-collection-of-person-names make-a-document-style
    make-a-new-section-marker make-a-permanent-individual
    make-a-relative-time make-a-situation make-adj-comp
    make-amino-collection make-an-end-vertex
    make-an-individual make-an-initial make-and-attach-v+v
    make-and-index-da-pattern make-annotation-invisible
    make-annotation-visible make-anonymous-variable
    make-antibody make-arc-for-pattern-item make-autodef
    make-binary-edge/explicit-rule-components make-binding
    make-bio-complex make-bio-complex-with-hyphen
    make-bio-pair make-bracket make-bracket-assignment
    make-bucket-entry make-c+v make-ca-binary-edge
    make-capitalized-version make-category
    make-category+value make-category+variable
    make-category-indexed-individual make-category-operations
    make-cfr make-cfr-symbol make-chart-edge
    make-citation make-class-for-text-relation
    make-clause-ref make-clause-var make-cn-plural-rule
    make-cn-plural-rules make-collection-of-uncategorized-names
    make-company-name-as-simple-sequence make-company-name-from-items
    make-comparative-adjp-with-np make-comparative-rules
    make-comparative/superlative make-completed-binary-edge
    make-completed-unary-edge make-completion-datum-for-epistemics
    make-composite-referent make-copular-adjective
    make-copular-def make-copular-pp make-copular-predication
    make-copular-predication-of-pp make-copy-of-edge
    make-corresponding-lexical-resource
    make-corresponding-mumble-resource make-da-arc
    make-da-rule make-da-trie-data make-def-protein
    make-default-binary-edge make-default-descriptive-individual
    make-discontinuous-edge make-disjunctive-lambda-variable
    make-dl-variable+value make-dli-for-join
    make-dli-for-ref-category make-document-lines-structure
    make-document-stream make-document-style make-dotted-rule
    make-dotted-rule1 make-dummy-v+v make-edge
    make-edge-based-on-morphology make-edge-below-top-edge
    make-edge-for-polyword make-edge-into-adjective
    make-edge-over-abbreviation make-edge-over-accumulated-hyphens
    make-edge-over-capitalized-sequence make-edge-over-digit-sequence
    make-edge-over-hyphenated-sequence make-edge-over-literal
    make-edge-over-long-span make-edge-over-mutated-protein
    make-edge-over-number-word-sequence
    make-edge-over-single-digit-word
    make-edge-over-unknown-digit-sequence make-edge-over-unknown-word
    make-edge-over-wh-question make-edge-spec
    make-edge-triple make-edge-vector make-edge-vector-array
    make-edge/all-keys make-end-vertex make-ev-array/kcons
    make-ev-array/vector make-event-relation make-exist-claim
    make-exploded-tree-family make-form-arc make-gap-arc
    make-grammar-module make-hyphenated-number
    make-hyphenated-pair make-hyphenated-structure
    make-hyphenated-triple make-immediate-constituent-pattern
    make-individual make-individual-for-dm&p make-infinitive
    make-initial-there-is-edge
    make-initial-word-frequency-entry/over-all make-irreg-mword
    make-k-method make-k-method-lambda make-kraql-action-call
    make-kraql-body-call make-kraql-call make-label
    make-label-arc make-lambda-variable
    make-lattice-description-from-collection-members
    make-lattice-point make-location-name
    make-marked-proposal make-maximal-projection make-mention
    make-mentions-long-term make-middle-vertex
    make-mixin-category make-model-category
    make-months-sequence make-more-saturated-psi
    make-morph-arc make-morph-edge-over-unknown-word
    make-mumble-mapping make-mumble-resource-stripping-underbar-human
    make-name-word-for-unknown-word-in-name make-name-word-for/silent
    make-name-word-silent make-necessary-adjustments-to-situations
    make-new-edge-over-pronoun make-new-psi-for-v+v
    make-new-trie make-ns-edge make-ns-pair
    make-number-colon-number-structure
    make-number-or-word-colon-structure make-object-dependent-location
    make-obo-term make-ordinal make-ordinal-item
    make-ordinal-pronoun-reading make-pair-with-protein
    make-paragraph-structure make-pattern-item
    make-person-name-from-items make-phosphorylated-protein
    make-pnf-state make-point-mutation
    make-point-mutation-from-number-amino-acid
    make-point-mutation-from-residue make-polar-adjective-question
    make-polar-copular-question make-polar-edge
    make-polar-participle-question make-polar-question
    make-polyword make-polyword-arc make-position
    make-position-array make-pp make-pp-relative-clause
    make-predication-edge make-prep-comp
    make-protein-collection make-protein-pair
    make-protein-pair/convert-bio-entity make-protein-variant
    make-pseudo-clause-for-indiv make-pseudo-clause-for-prot-indiv
    make-psi make-psi-for-subtype make-psi-with-just-a-type
    make-reach-entities-hash make-reactome-voc-item
    make-realization-data make-realization-node
    make-referential-category make-relative-location/revise-parent
    make-relative-subordinator make-relativized-pp
    make-residue-on-protein make-resource-for-sparser-word
    make-rule-set make-rule-trie make-rules-for-head
    make-rules-for-rdata make-scafold-individual
    make-scan-pattern make-scan-pattern-state
    make-scan-pattern-transition make-schematic-rule
    make-scheme-mapping make-section-marker
    make-segment-heuristic make-semantics-filename
    make-sentence-container make-sentence-container/simple
    make-sentence-container/situation make-sentence-content-container
    make-sentence-layout make-simple-individual
    make-standard-proteins make-start-vertex
    make-subcat-pattern make-subcat-patterns
    make-subcategorization make-subj-vp+ing-rule-pair
    make-subj-vp-rule-pair make-subordinate-clause
    make-subtype make-subtype-lattice-point
    make-subtyped-category make-sucessive-dotted-rules-from-the-left
    make-superlative-rules make-temporal-sequences
    make-temporary-individual make-text-relation-instance
    make-the-chart make-the-edge-resource
    make-the-invisible-markup-trie make-the-start-vertex
    make-there-exists make-this-a-question-if-appropriate
    make-throw-away-individual make-to-comp-with-subject-edge
    make-token-from-list-of-chars make-top-lattice-point
    make-top-v+v make-transition-print-string-from-exp
    make-treetop-semantic-snapshot make-treetop-snapshot
    make-trie make-trivial-saturated-individual
    make-typed-bio-entity make-uncategorized-name-from-items
    make-unindexed-individual make-unit make-unknown-title
    make-unknown-word/s-arc make-v+v-and-new-psi
    make-variable+value make-vertex make-vertex-base
    make-vg-aux make-weekdays-sequence make-wh-nominal-edge
    make-wh-object make-wild-type-edge make-word
    make-word-arc make-word-colon-word-structure
    make-word-symbol make-word/all-properties
    make-word/all-properties/or-primed
    make-word/capitalization-&-digits make-word/no-properties
    make-year-from-constituent make/binding
    make/company-with-name make/individual
    make/location-with-name make/named-object-with-name
    make/permanent-individual make/person-with-name make/psi
    make/uncategorized-name manage-wrapped-edge-resource
    map-doc-count-entry map-out-the-distribution ddm-util:mapappend
    mapk-sites march-back-from-the-right/forest
    march-back-from-the-right/segment march-back-one-position/forest
    march-back/segment/2 march-peeking-rightward
    march-rightward-over-edges-by-form
    mark-as-constructed-category-for-word mark-as-form-category
    mark-as-sp-pattern-accept-state mark-best-so-far
    mark-definition-source mark-examples
    mark-initial-quotation-mark mark-instance-indefinite
    mark-instance-of-and mark-open-angle-bracket
    mark-open-curly-bracket mark-open-paren
    mark-open-square-bracket mark-position-as-generic-boundary
    mark-possessive-on-prior-word mask-preposed-aux
    massage-referent-schema match-bracketing-to-citation
    match-chart-to-citation match-edge-descriptors
    match-edge/label-to-symbol match-first-word
    match-second-word match-treetop-pattern
    match-trie-against-pattern-identity match-words-minus-suffix?
    matched-pred? max-edge?
    maybe-add-domain-adjunctive-predicate-to-phrase
    maybe-attach-adverb-to-pp maybe-check-semantic-completeness
    maybe-expand-conjunctions maybe-extend-comparative-with-than-np
    maybe-extend-premod-adjective-with-pp maybe-extract-statement-edge
    maybe-indiv-uid maybe-insert-raw-text-variable
    maybe-make-individual maybe-push-sem
    maybe-record-all-referent-surface-strings
    maybe-record-bio-chemical-entity-strings
    maybe-record-bio-chemical-heads maybe-record-bio-entity-heads
    maybe-record-localization-interesting-heads
    maybe-save-suppressed-verb+ed maybe-save-verb+ed-sents
    maybe-string-downcase maybe-suppress-daughters-dh-entry
    ddm-util:mbug mdata meaningful-binding? meaningless-char?
    measure-distance-between-segment-boundaries measure-fsa-facts
    medium-quality-parses ddm-util:memq ddm-util:memq/assq
    mention-clause-tree mention-head mention-history
    mention-in-sentence? mention-p mention-paragraph-location
    mention-restriction mention-source
    mention-source-form-category mention-uid
    mentioned-in-article-where mentioned-where
    mentions-in-sentence-edges merge-comlex-entries
    merge-duplicate-protein-defs
    merge-duplicates-and-separate-families
    merge-duplicates-and-separate-families-with-rev-defs
    merge-fam-defs merge-family-defs merge-hgnc-equivalents
    merge-into-ras2 merge-protein-defs merge-proteins
    merge-ras2-proteins merge-stranded-parens-remove-phospho-defs
    merge-voc-lists metadata methodology
    methodology-phrase methodology? minimal-setup
    missed-entities missed-uniprot missing-object-vars
    missing-subject-vars mitre-order-bindings mitre-string
    mixin-category-p ml ml/sp ml/sp/data
    model model-category-p modified modified-head
    modifier+noun modifier-category? modifier-head-relations
    modifier-of-head modify-comparatives-rule-labels
    modify-word-buffer-to-lowercase ddm-util:month-day ddm-util:month-day-year
    more-than-n-text-relation-instances morph-arc-p
    morph-state most-recent-binding
    most-recent-daughter-of-type most-recently-mentioned
    most-specific-k-method motivation motivation-phrase
    motivation? move-dot move-edges-above-to-new-pos
    move-np-to-stranded-prep move-on
    move-to-end-of-word-initated-edge-if-exists move-to-forest-level
    mult/check-form-options mult/form-label-looking-left
    mult/form-label-looking-right multi-colon-ns-patterns
    multi-word-string multiple-memq multiply
    multiply-edges multiply-form-category multiply-form-form
    multiply-ids multiply-labels multiply-semantic-categories
    multiply-through-positions mumble-data
    mumble-equivalent-irreg-key mumble-map-data mumble-phrase
    mumble-pos mumble-rdata mumble-resource
    mumble-resources-for mumble-symbol my-rt
    n-bar/ca-dispatch name name-as-category-and-id
    name-based-on-sequence/uncategorized name-components-of
    name-includes-slash name-is-cat-p name-of-individual
    name-of-string-for-function name-to-use-for-category
    name-word-for-word name-word-print-routine name-word?
    name-words-for/silent names-based-on-sequence
    names-bio-chemical-entity? names-including-name-word
    nary-rule ncit->upa? ddm-util:nconcf necessary-vars?
    neo-fire-setting new-bio-entities
    new-category-specializing-event new-fact-phrase new-fact?
    new-facts new-forest-driver new-forest-protocol?
    new-instance-of-known-object new-lattice-point new-lhs
    new-location new-object-of-established-category
    new-ortho-paragraph new-pass2 new-reach-def->krisp-def
    new-reach-defs->krisp new-rule-trie
    new-section-in-article newline-fsa newline-fsa/paragraph
    next next-chart-position-to-fill next-edge-from-resource
    next-id next-indexical-name next-instance
    next-item next-left-looking-id next-right-looking-id
    next-terminal next-terminal/no-whitespace
    next-terminal/pass-through-all-tokens
    next-terminal/pass-through-all-tokens/buffered next-token
    next-token/buffer next-treetop/leftward
    next-treetop/rightward next-word
    next-word-does-not-indicate-a-significant-boundary
    next-word-is-digit? next-word-is-not-sentence-final-period
    ng-compatible? ng-head? ng-start? nl->space
    nl-fsa/nl-is-meaningless/no-counting no-actions/section-marker
    no-edge-over-segment-head no-further-action-on-segment
    no-morph-on-short-words no-op/one-arg no-op/two-args
    no-space-before-word? no-traces node-with-variables?
    non-bio-entity? non-boundary-continuation
    non-boundary-continuation/bracket-checked
    non-det-or-verb-ng-start? non-digits-without-rule-sets
    non-phrasal-classes non-redundant-def non-terminal-tags
    norm-bv norm-sem normal-segment-finished-options
    normalized-count nospace-hyphen-specialist
    not-all-same-character-type not-protein? note
    note-biological note-category-for-word note-company
    note-conjecture-phrase note-country note-date
    note-discourse-relation note-entity
    note-experimental-result note-explicit-reference
    note-failed-tests note-file-location note-grammar-module
    note-immediate-relations-to-head
    note-impermanence-of-categorys-individuals
    note-in-segment-adgacences note-known-result
    note-methodology note-motivation note-name
    note-new-fact note-permanence-of-categorys-individuals
    note-surface-string note-text-relations-in-segment
    note-title note-what-the-head-is
    notice-immediate-constituent-pattern notice-nonterminal-tag
    notice-pos-tag notice-tag notice-word noun
    noun-category? noun-edge? noun-forms-of
    noun-like-ng-head? noun-noun-compound noun/expr
    np np-category? np-comma-obj-relative
    np-comma-obj-relative-comma np-comma-pp-comma
    np-comma-subj-relative np-comma-subj-relative-comma
    np-conj-pp np-conjunction-edge? np-containing-edge?
    np-containing-mention? np-end-edge np-head
    np-head-edge? np-over-that?
    np-segment-contains-more-than-article? np-specifier?
    np-target? np-vg+ed np/ca-dispatch
    ns-amino-pattern-resolve ns-apostrophe-check
    ns-biochemical-heads->file ns-category-for-reifying
    ns-examples->file ns-multiple-rule-patterns
    ns-pattern-dispatch ns-pattern-rules ns-prefixes
    ns-protein-pattern-resolve ns-punct-pattern-split
    ns-undef->trips ns-undef-items->file ns-unknown-items
    ns-unknown-rd-items ns-unknown-rd-items->file
    ns-unknown-sublist ns-unknown-sublist->file nspaces
    nth-child nth-item nth-ordinal nullify-vars
    number-multiplicand number-noun-compound
    number-of-cases-without-realizations number-of-da-rules
    number-of-documents-containing-word number-of-objects
    number-of-spaces number-of-spaces-named
    number-of-terminals-between number-of-treetops-between
    number-of-words-counted number-ones number-teens
    number-tens number-times-number-word number-value
    number-word-fsa numbers-of-objects ddm-util:|OBJ#|
    obj-complement-follows? object-target?
    object-types-in-discourse-history object-variable
    object-variables obo-comment obo-definition
    obo-downlinks obo-id obo-name obo-namespace
    obo-ns-prefix obo-synonyms obo-uplinks
    occurs-in-names of-mentions old-bind-variable
    old-display-sent old-losing-competition? old-pass2
    old-rt older-island-driving-rest-of-pass-one
    older-run-island-checks-pass-two one-anaphor-item?
    one-colon-ns-patterns one-edge-instantiate-individual-with-binding
    one-hyphen-ns-patterns one-line-print
    one-many/just-check-labels one-of-the-edges-is-a-name-word
    one-one/just-check-edges one-one/just-check-labels
    one-slash-ns-patterns one-syllable? one-word-long?
    only-aux-or-modal-to-left only-country-in-items
    only-known-as-a-name only-nontrivial-edges
    only-slot-is-word only-tokenize-on-whitespace-or-punctuation
    open-bracket open-bracket-already-there
    open-character-source/file open-core-variable open-in
    opens-new-segment opens-new-segment-with-next-word
    operate-on-current-word opportunistic-binding-to-composite-head
    order-by-capitalization order-icp-by-frequency
    order-pw-alphabetically/longest-last order-unlike-individuals
    order-word-list-alphabetically ordered-list-of-rnodes
    original-form-of-preposed-aux original-rhs-of-nary-rule
    ortho-paragraphs/off ortho-paragraphs/on
    other-named-string other-punct? other-single-cap-words
    otowop-accumulating-case otowop-clear-case
    otowop-one-word-case otowop-ws-buffered-case
    output-hms-json output-new-prot-fam-files
    output-protein-and-fam-defs-to-files output-protein-defs-to-files
    override-label override-subcat-patterns sparser:p |P#|
    p-nth-2sem p/e p/m p/r p/r-sem
    p/s p/s-all p/te p2sem
    package-approximation-number package-number-plus-error
    package-qualifying-pair package-slashed-sequence
    pair-context paragraph paragraph-structure-after
    paragraph-structure-before paragraph-structure-end
    paragraph-structure-number paragraph-structure-p
    paragraph-structure-start paragraph-trace-hook
    paragraphs-in-doc-element parent parent-edge-for-referent
    parent-state parentheses parse-all-options-in-region
    parse-at-the-segment-level parse-between-boundaries
    parse-between-nospace-scan-boundaries
    parse-between-parentheses-boundaries parse-chunk-interior
    parse-forest-and-do-treetops parse-from-to/topmost
    parse-from-within-pnf parse-number-sequence
    parse-section-title parse-sentence-carefully
    parse-successive-paragraphs parse-template
    parser-state-transition parser-tests parses-with-one-edge
    parsing-protocol-for-documents parsing-status
    part-of-speech-given-word participle?
    passive-is-covert-tocomp passive-premodifier past-tense
    pastpart-is-likely-ng-internal? patch-sequence-into-trie
    path-to-i-in-semtree pathway-string
    pattern-item-as-string pattern-item-p pattern-item-plist
    pattern-item-spec pattern-item-type pattern-sweep
    pattern-transition? pbb-multiple-on-right/looking-left
    pbb-single-right/looking-left pd-to-up-ncit
    peek-at-next-chars/trie/invis-markup ddm-util:peek-debug
    peek-rightward peg-type-list peg-v+v-alist
    pending-def-references pending-definite-references
    pending-partitive-references pending-partitives
    pending-prediction pending-slot pending-type-requirement
    pending-variable per-article-initializations
    perform-local-variable-disambiguation
    perform-over-ridden-variable-disambiguation period-check
    period-final-polyword-could-end-here? period-hook
    period-hook-off period-hook-on period-marks-sentence-end?
    period-marks-sentence-end?/look-deeper period-reader
    permanent-individual? pfwpnf phos-sents
    phospho-prefix-matches-other-def phrasal-dli-cat-refs
    phrasal-state phrase-and-vg+ed ddm-util:pl
    place-boundary/begins-after place-boundary/begins-before
    place-boundary/ends-after place-boundary/ends-before
    place-referent-in-lattice plausibly-too-early-to-take-preposed-aux
    plist-for ddm-util:plist-to-alist plural-head?
    plural-noun-and-present-verb? plural-noun-not-present-verb?
    plural-version plural-version/pw
    plural-words-given-cl-clause pname pname-for
    pname-with-a-d pname-with-an-e pnf
    pnf-is-not-running pnf-state-id pnf-state-named
    pnf-state-p pnf-state-plist pnf-state-rule-set
    pnf-state-symbol pnf-transition? pnf-treetop-at
    pnf/check-if-conjunction-is-a-list pnf/check-titles
    pnf/check-titles/prior-word pnf/prefer-heads-over-modifiers
    pnf/prefer-kinds-over-modifiers-or-events pnf/prefer-name-words
    pnf/scan-classify-record pnf/scan/ignore-boundaries
    pnf/scan/ignore-boundaries/initials-ok pnf/throw-up-hands
    poirot-interface-setting polar-aux-s-stranded-prep
    polar-copula-question-object polar-copula-question-subject
    polar-copular-np polar-postmodifying-adj
    polar-postmodifying-vp+ed polar-reduced-rel
    polar-reduced-relative polar-sentential-subject
    polar-stranded-preposition polyword-arc-p polyword-check
    polyword-multiword-string-for-list-of-words polyword-named
    polyword-named/list-of-words polyword-p polyword-rule?
    polywords-including-period polywords-with-final-period
    polywords-with-rule-sets poorly-identified-proteins
    pop-back-to-siblings-or-parent ddm-util:pop-debug ddm-util:pop-indentation
    pop-off-top-pending-left-opener pop-ongoing-section
    pop-path-to-next-slot pop-predicted-path pop-topmost-edge
    pop-up-to-slash populate-categories-that-appear-in-names
    populate-categories-without-realization-schema
    populate-comlex-adjectives populate-comlex-adverbs
    populate-comlex-function-words populate-comlex-nouns
    populate-comlex-verbs populate-da-data
    populate-functions-for-profiling populate-greek-character-map
    populate-in/definite-articles
    populate-irrelevant-to-discourse-history populate-lc-person-words
    populate-ns-informative-categories populate-rules-that-are-fsas
    populate-section-marker populate-stack-of-pending-left-openers
    populate-verbal-auxiliaries populate-wh-determiners
    populate-word-lookup-buffer/buffer-indicies
    populate-word-lookup-buffer/string pos
    pos-after-is-end-of-sequence pos-array-index
    pos-assessed? pos-capitalization pos-character-index
    pos-display-char-index pos-edge-ends-at
    pos-edge-starts-at pos-ends-here pos-ev-ends-at
    pos-info pos-preceding-whitespace pos-starts-here
    pos-status-lifo pos-tags pos-terminal
    pos-token-index position |POSITION#|
    position-already-has-whitespace
    position-before-segment-final-multi-word-edge
    position-is-at-or-between position-is-between position-p
    position-precedes position/< position/<=
    position/> position/>= positions-and-treetops-between
    possessed possessive-np possessor
    possible-indirect-object? possible-spatio-temporal-prep?
    possibly-print-sentence post-analysis-operations
    post-mvb-verbs post-non-eos-period-operations
    post-process-grammar-module postmodifying-adj
    postprocess-grammar-indexes postprocess-the-trips-concepts
    postprocess-transfer-instructions postprocess-tree-families
    postprocess-trips-concept pp pp-absorbing-edge?
    pp-comma-pp-comma pp-relative-clause? pp?
    ppcre-scan ppcre-split ppev/e ppev/s
    pprinc-unit pprint-ev pprint-psi pprint-rdata
    pptt pre-allocate-paragraphs
    pre-interpret-first-and-second-pronouns pre-mvb-verbs
    preceded-by-angstrom-character? preceded-by-comma-and-an-edge
    preceded-by-digit-based-number preceding-adverb
    preceding-adverb-or-subordinate-conjunction
    preceding-adverb-preceded-by-ng preceding-det-prep-poss-or-adj
    preceding-determiner? preceding-do? preceding-noun-refs
    preceding-plural-deictic? preceding-plural-noun?
    preceding-preposition preceding-pronoun-or-which?
    preceding-that-or-whether? preceding-that-whether-or-conjunction?
    predication? predicted-parameter-bindings predicted-path
    preempt-all-fns-that-stop-execution preempt-break-function
    preempt-cerror-function preempt-error-function
    prefer-capitalized-sequences prefer-edge-referring-to-terms
    preferred-treetop prep? prepare-category-operations
    prepopulated? preposed-aux preposed-aux?
    preposed-of? preposition-category? preposition-edge?
    prepositional-phrases prepositions present-tense
    preterminal-edge-at? preterminal-edges
    preterminals-for-known preterminals-for-unknown
    preterminals/word pretty-princ-individual
    pretty-print-grammar-module pretty-print-individual
    pretty-print-schr pretty-print-status-history
    pretty-schr-as-string prev-adj
    prev-edge-says-unlikely-clause? prev-noun-or-adj previous
    previous-location previous-sentence
    prime-all-comlex-words prime-comlex
    prime-sparser-profiler prime-tr-word
    prime-word-from-comlex prime-word-text-relation-sort-predicate
    primitive-for-export prin-escaped princ-binding
    princ-bound-in princ-bracket-word-or-type princ-category
    princ-cfr princ-csr princ-date
    princ-edge-vector-position-number princ-form-rule
    princ-individual princ-left-context-csr princ-name
    princ-number princ-open-list-of-variables princ-polyword
    princ-polyword-cfr princ-position princ-rewrite-rule
    princ-rewrite-rule/multipliers princ-right-context-csr
    princ-rule-term princ-scan-pattern-state
    princ-syntactic-cfr princ-variable
    princ-variable-value-restriction princ-variable/dot-form
    princ-variable/string princ-word
    print-anonymous-variable-structure print-autodef-in-view
    print-autodef-structure print-binding-list
    print-binding-structure print-biopax-entity
    print-bracket-assignment-structure print-bracket-structure
    print-bracket/ending-at print-bracket/starting-at
    print-category+value-structure print-category+variable-structure
    print-category-discourse-history print-category-structures
    print-cfr-structure print-char-trie
    print-characters-between-segments print-citation-structure
    print-collection-of-name-items print-composite-referent
    print-da-arc-structure print-da-rule-structure
    print-da-vertex-structure print-defs-to-file
    print-discourse-history
    print-disjunctive-lambda-variable-structure
    print-dl-variable+value-structure print-document-stream-structure
    print-document-style-structure
    print-edge-as-category-and-text-segment
    print-edge-category-and-text-one-line print-edge-structure
    print-edge-vector-structure print-flat-forest
    print-for-menu/categories print-for-menu/cfr
    print-for-menu/words print-grammar-module-structure
    print-individual-structure print-individual-with-name
    print-individual/number print-lambda-variable-structure
    print-lattice-point-structure print-mixin-category-structures
    print-model-category-structures print-multiple-edges-tt
    print-one-word-segment/sw print-operations-data-structure
    |PRINT-PARAGRAPH-#| print-paragraph-structure
    print-partially-saturated-individual-structure
    print-pattern-item-structure print-pending-left-opener-stack
    print-pnf-state-structures print-polyword-structure
    print-position-structure print-position/terminal
    print-readably print-realization-node-structure
    print-ref-category-structures print-rule-set-structure
    print-scan-pattern print-scan-pattern-state
    print-scan-pattern-transition print-schematic-rule-structures
    print-section-marker-structure print-segment
    print-segment-and-pending-out-of-segment-words print-segment/sw
    print-self-lattice-point-structure print-sem-tree
    print-short-rule print-subcat-pattern
    print-subtype-category-structures print-subtype-lattice-point
    print-top-lattice-point-structure print-tree
    print-tree-family-structure print-treetop
    print-treetop-labels-in-current-segment
    print-treetop-labels-in-segment print-treetop-tight
    print-treetops print-trie-data-struct
    print-trie-subnetwork print-var-vals
    print-variable+value-structure
    print-word-as-category-and-text-segment print-word-structure
    prior-individual prior-item priority-rule?
    priority-triple? pro-name probably-new-unary-rule?
    probably-the-result-of-type-raising process-accepted-scan-pattern
    process-accepted-scan-pattern/s process-edges-over-word&continue
    process-hms-article-sents process-question
    process-reach-article-sents process-trips-concept-form
    process-trips-wn-symbol process-trips-wn-symbols
    processes-under pronominal-or-deictic? pronoun-category?
    pronoun-or-wh-pronoun pronoun?
    propagate-suffix-to-segment proper-noun-comma-pp-comma
    proper-noun-comma-vg+ed-comma proper-noun-plural-modifier?
    proper-noun-reduced-relative? proper-noun-vg+ed
    proper-noun-vp+ed proper-noun? proper-vs-common
    prot-name protein-desc protein-name-count
    protein-or-nucleotide-p protein-string prune-blist
    psem psemtree pseudo-rhs-of-csr psi-all-supers
    psi-binds-variable-to-value psi-bound-in psi-downlinks
    psi-id psi-lattice-point psi-lp psi-not-super
    |PSI-OBJECT#| psi-old-binds psi-p psi-path
    psi-pdownlinks psi-plist psi-restrictions
    psi-rnodes psi-source psi-type psi-uplinks
    psi-v+v |PSR#| pt ptree pts
    public-grammar-module pull-document-number-out-of-edge-sequence
    pull-out-date-from-edge pull-out-document-number-from-edge
    pull-out-first-sublist pull-out-next-sublist
    pull-out-source-from-edge pull-out-sub-referent-expression
    punct-tag punctuation-char? punctuation-final-in-ns-span?
    punctuation-named punctuation-terminates-no-space-sequence
    punctuation? push-binding-onto-binds-field
    push-binding-onto-bound-in-field push-binding-onto-instances-field
    push-conjunction ddm-util:push-debug push-fsa-onto-word
    ddm-util:push-indentation push-instantiated-pattern-element
    push-item-onto-fsa-field push-loose-adjective
    push-loose-adverb push-loose-clauses push-loose-np
    push-loose-subj+verb push-of push-on-pending-left-opener
    push-parentheses push-polyword-state-onto-word
    push-post-mvs-verbs push-preposition
    push-prepositional-phrase push-pronoun
    push-sem->indra-post-process push-subcat
    push-subordinate-conjunction push-that push-verb-phrase
    put-reactome-ids-at-end pw-accept-state? pw-continuations
    pw-fsa pw-participates-in pw-plist pw-pname
    pw-rule-set pw-symbol pw-word pw-word-chain
    pw-words pw-words-fit-chart-ending-here qepp qpp
    quantifier-det-compound quantifier-noun-compound quantify
    quantify-rel-pro quick-scan-for-tx quiet
    quiet-semantics ddm-util:quote-every-other-one quote-reader
    r-of r2-proteins-in raise-quantifier-to-np
    rank-of-bracket ras2-protein? ras2-proteins-in-sentences
    ras2-sentence rationalize-pos rdata rdata-etf
    rdata-for rdata-head-word rdata-head-words
    rdata-local-rules rdata-mapping rdata-subcat-frame
    rdata/pos rdatum-for-mdata rdt/close-the-rdt-tableau
    rdt/edit-the-save-file rdt/gloss-rules-created
    rdt/save-new-rule re-compute-daughter-relationships
    re-initialize-position-array reach-arg-details
    reach-class->krisp reach-collect-bio-processes
    reach-event-examples reach-id-entities reach-id-events
    reach-pathname reach-process-p reach-sexpr
    reach-trigger->krisp-cats reach-vetted-up-defs->krisp
    reactome-hgnc-normalize-protein-name
    reactome-hgnc-normalize-proteins reactome-name-elts
    reactome-names-for read-and-normalize-protein-defs
    read-and-normalize-protein-fam-defs read-and-replace-protein-defs
    read-and-replace-protein-defs-with-rev-defs
    read-chars-into-buffer/maximum-count
    read-chars-into-buffer/no-changes read-comlex-hash-words
    read-epistemic-features read-from-document
    read-from-json-list read-from-source-to-window
    read-obo-term-file read-paragraph-guts
    read-terminal-tags-from-file read-through-segment-to-end
    readin-english-lexicon readout-bracketing
    readout-entities readout-frequency-table
    readout-relations readout-segments/sw
    readout-segments1/sw readout-segments?
    readout-tb-np-segmentation readout-tb-terminals
    readout-the-next-portion-of-segments readout-wf-table
    readout-word-frequency-table-into-a-list
    real-definition-of-finish-token real-find-word
    real-right-daughter realization-history
    realization-node-p realization-scheme-named realize
    really-known-word? reap-individuals reason-to-not-span-ns
    reason-to-terminate-name-at-and? rebind rebind-value
    rebind-variable rebuild-wh-other-edge
    reclaim-all-instances reclaim-lattice
    reclaim-lattice-point reclaim-temporary-individuals
    reclaim/collection reclaim/name-word
    reconcile-lemma-and-original record-any-determiner
    record-as-derived-from-text-relation record-bce record-bp
    record-chunk record-chunks-for-regression-test
    record-dl-instance-within-sequence record-generation-information
    record-inflections record-initial-wh
    record-instance-within-sequence record-irrelevant-sentence
    record-lemma record-obo-names record-of-tt
    record-original-from-stem record-period-in-digit-sequence
    record-preposed-aux record-protein-id-for-synonyms
    record-reach-events record-rule record-rule-by-id
    record-sentence-model-data record-simple-instance-within-sequence
    record-subcat-use record-subcats record-tt
    record-use-of-tf-by record-verb-tense
    record-word-frequency record-word-frequency/over-all
    record/extend-mdata recover-acronym-if-necessary
    recurse-through-document recursive-write-org-lines
    red-string redeclare-permanent-individuals-if-necessary
    redefine-da-rule redefined-object redefinition-of-rule
    redistribute redo-current-article-as-djns
    reduce-multiple-initial-edges ref-from-edge ref-type
    ref/binding ref/daughter ref/function
    ref/function/n-ary-rules ref/handle-head-and-bindngs
    ref/head ref/instantiate-individual
    ref/instantiate-individual-with-binding ref/subtype
    refactor-s-for-buried-relative referent-for-edge
    referent-for-reduced-relative referent-for-schema
    referent-from-rule referent-from-unary-rule
    referent-of-list-of-conjoined-edges
    referent-of-parenthetical-expression referent-of-right-suffix
    referent-of-the-last-edge referent-of-two-conjoined-edges
    referent-of-two-conjoined-referents referent-uses-function?
    referent-uses-method? referential-category-named
    referential-category-p referents-of-list-of-edges
    refill-character-buffer refill-character-buffer/file
    refill-character-buffer/string refine-bracket-at-segment-boundary
    register-category-for-indexing register-indexical-variable
    register-var-name-to-category-list register-variable
    reify-amino-acid-pair reify-digit-word
    reify-implicit-individuals-in-segment reify-ns-name-and-make-edge
    reify-ns-name-as-bio-entity reify-p-protein-and-make-edge
    reify-p-residue-and-make-edge reify-point-mutation
    reify-point-mutation-and-make-edge reify-residue
    reify-residue-and-make-edge reify-segment-head-and-loop
    reify-segment-head-as-a-category reify-segment-head-if-needed
    reify-spelled-name reify-state-of-capitalization-fsa
    reify-text-relation reify-two-part-label
    reinitialize-rule-recording reinitialize-syntactic-function-data
    reinitialize-the-paragraph-resource ddm-util:reintern-symbols
    reinterp-list-using-bindings reinterp-mention-using-bindings
    reinterpret-collection-with-modifiers reinterpret-dominating-edges
    reinterpret-edge? relations relations-in
    relations-in-sentence relative-time-value
    release-edge-to-resource relevant-category-for-dh
    relevant-type-of-individual remaining-forms
    remove-after-analysis-action remove-after-paragraph-action
    remove-binding-from-binds-field remove-binding-from-bound-in-field
    remove-binding-from-individual remove-collection-from-index
    remove-collection-item-mentions ddm-util:remove-comma-from-number
    remove-daughter-edge remove-dotted-tag
    remove-dup-alt-defs remove-edge-from-chart
    remove-edge-from-position remove-edge-from-vector-ev
    remove-family-names remove-family-names-from-protein-defs
    remove-fams-from-prot remove-history-of-individual
    remove-history-of-instance/edge ddm-util:remove-leading-whitespace
    remove-literals-from-list-of-edges remove-noun-edge
    remove-per-run-init-form
    remove-phospho-defs-and-merge-stranded-parens remove-predef-ns
    ddm-util:remove-prefix remove-prot-affixes
    remove-redundant-literal-triples remove-rule-set-from
    ddm-util:remove-suffix remove-surplus-literal-compositions
    remove-syn-from-prot-def remove-tag
    remove-title-text-from-document ddm-util:remove-trailing-whitespace
    remove-uniprot-prefix rename-eci-terms-as-needed
    rename-roles-as-needed reorder-categories-to-put-top-last
    repair-bad-composition repair-forward-ref-to-state
    repeat-last-file replace-all replace-daughter-edge
    replace-filename-suffix replace-from-mapping
    replace-html-char-encoding replace-subcat-pattern
    replace-title-text-in-multiples replace-with-canonical-ref-vars
    report-active-count/interesting-categories report-bad-itype-of
    report-comlex-list-lengths report-form-check-blocks
    report-line-counts report-rules-by-count
    report-syntactic-function-usage report-time-to-load-system
    report-timer-value report-word-and-rules-count
    report-word-increment research-edge-tree reserved-char?
    reset-and-do-discourse reset-category-count reset-dectest
    reset-display-line-chars-remaining-counter reset-ev-edges
    reset-ev-top-node reset-line-count-accumulators
    reset-localization-interesting-heads-in-sentence reset-test
    reset/over-all resize-stack-of-pending-left-openers
    resize-word-lookup-buffer resolve
    resolve-bracket-components resolve-colon-pattern
    resolve-form-category resolve-form-label
    resolve-hyphen-between-three-words
    resolve-hyphen-between-two-terms resolve-hyphen-between-two-words
    resolve-hyphen-pattern resolve-hyphen-segment
    resolve-initial-stranded-hyphen resolve-non-slash-ns-pattern
    resolve-ns-pattern resolve-or-make/symbol-to-category
    resolve-other-punctuation-pattern resolve-protein-hyphen-word
    resolve-protein-prefix resolve-referent-expression
    resolve-slash-pattern resolve-slash-segment
    resolve-string-to-polyword resolve-string-to-word
    resolve-string-to-word/make
    resolve-string-to-word/make/not-runtime resolve-symbol-to-category
    resolve-symbol-to-category/check resolve-trailing-stranded-hyphen
    resolve-variable-restriction resolve/make
    resource-class-name resource-store
    respan-edge-around-one-word respan-edge-for-new-referent
    respan-top-edge rest-of-scan-next-position
    restore-original-break-error-&-cerror-definitions result-of
    resume-after-error resume-old-parsing-protocol
    resume-prescanned-segment retest
    rethread-anaphor-bindings retrieve-psi-from-v+v
    retrieve-surface-string return-newline-tokens
    return-newline-tokens/linefeed return-possibly-fixed-chunk-ev-list
    return-to-scan-level-from-null-span return-to-scanning-level
    revamp-binding-instructions-as-variable-value-plist ddm-util:reverse-plist
    revert-preposed-aux revert-to-error-break
    revert-to-regular-break revise-cfr-ancilaries revise-edge
    revise-form-of-nospace-edge-if-necessary
    revise-left-edge-into-rule revise-parent-edge
    revise-protein-def revise-right-edge-into-rule
    right-bounded-np? right-edge-for-referent
    right-edge-of-triple right-fringe right-fringe-of
    right-looking-category-id right-looking-category-ids
    right-looking-form-id right-multiword-treetop right-side
    right-treetop-at right-treetop-at/edge
    right-treetop-at/only-edges right-treetop-edge-at
    rightmost rightmost-daughter-edge rightmost-np-under-s
    rightmost-triple rls rn-arg rn-arg-c+v
    rn-cfr rn-downward-links rn-head rn-head-c+v
    rn-lattice-point rn-plist rn-upward-links
    rn-variable |RNODE#| rnode-for-edge
    roll-up-edges-to-the-left rollout-naries-from-the-left
    rs-backpointer rs-completion-actions
    rs-distinct-categories rs-fsa rs-left-looking-ids
    rs-phrase-boundary rs-plist rs-right-looking-ids
    rs-single-term-rewrites rspec-form rspec-label
    rspec-referent rtd/shutdown rule-being-interpreted
    rule-component-to-use rule-descriptor-to-nlg-resource
    rule-for rule-for-edge-pair rule-for-form-march
    rule-forms rule-is-for-a-verb? rule-lhs
    rule-lhs-form rule-number-string rule-number/cfr
    rule-records rule-set-for rule-set-p
    rule-set-with-rules rule-trie-p rule-trie-plist
    rule-trie-rules rule-trie-table rule-trie-uid
    rule-type rule-used rules-for-label rules-using
    rules-using-label rules-using-syntactic-functions
    rules-with-greek-chars-substituted rules-with-lhs
    run-after-paragraph-actions run-editor run-fsa
    run-inner-rule-over-blists run-inner-rule-over-blists-bak
    run-island-checks run-island-checks-pass-two
    run-reactome-comments run-real-per-article-initializations
    run-segment-heuristic run-string-for-timing
    run-string-for-timing/no-forest run-test run-token-fsa
    run-treetop-semantic-snapshot run-treetop-snapshot russ
    rusty s+prep s-comma-np-comma-and-np
    s-comma-obj-relative s-comma-subj-relative s-comma-vp+ed
    s-comma-when-relative s-comma-where-relative
    s-comma-where-when-relative s-conjunction-np
    s-form-of-verb ddm-util:s-intern s-vp+ed
    s-when-relative-clause safe-edge-form safe-edge-mention
    safe-itype-of safe-itypep safe-parse
    safe-sentence-individuals same-category?
    same-label-different-span same-role
    same-span-different-label sanity-check-word-formation
    ddm-util:sans satisfies-sc-pattern satisfies-subcat-restriction?
    satisfies-variable-restriction? saturated-form-on-primitives
    saturated-simple-index saturated? save-article-semantics
    save-article-semantics-format save-article-sentence
    save-bio-processes save-cat-string save-conjunctions
    save-corpus-sents save-hgnc-ids save-missing-subcats
    save-names save-ns-example save-ns-rule?
    save-semantics-for-corpora save-sent-parse
    save-sent-snapshots save-subcat-info
    save-subcat-tree-to-file save-surface-string
    save-treetop-semantic-snapshot save-treetop-snapshot
    save-treetop-snapshots save-var->bio-nl-new-defs-file say
    sc sc-pat-matching-label scan-and-swap-character-buffer
    scan-another-segment? scan-for-hidden-internal-markup-data
    scan-for-more-number-words scan-for-sequence-of-hyphens
    scan-for-tag-end-marker-and-continue scan-next-pos
    scan-next-position scan-next-segment scan-pattern-named
    scan-pattern-p scan-pattern-starting-pair
    scan-pattern-starting-pair-1 scan-pattern-state-named
    scan-pattern-state-p scan-pattern-transition-p
    scan-segment scan-sentences-and-pws-to-eos
    scan-terminals-and-do-core scan-terminals-loop
    scan-terminals-of-sentence scan-through-document
    scan-transition-data scan-transition-output
    scan-treetops-and-form-citation-exps scare-quote-specialist
    schema-head-keyword schema-mapping
    schema-substitution-args schema-tree-family
    schematic-rule-p schr-descriptors schr-form
    schr-form-rule schr-lhs schr-original-expression
    schr-referent schr-relation schr-rhs
    schr-tree-family scott-1 scott-2 scott-3
    scott-4 scrape-rules-out-of-property-list
    sdm-action/all-contiguous-edges/finish
    sdm-action/discontinuous-edges sdm-action/no-edges
    sdm-action/some-adjacent-edges sdm-action/some-edges
    sdm-span-segment sdm-span-segment/prefix
    sdm/analyze-segment search-dh-for-compatible-referent
    search-edge-tree search-ev-for-edge
    search-for-list-conjunction
    search-for-subject-and-make-edge-if-found
    search-into-s-for-participles-subject search-known-word-for-fsas
    search-left-for search-mentions-by-position
    search-tree-for-referent search-tree-for-type
    search-word-for-fsas second-highest-tt-starting-at
    second-imposes-relation-on-first? second-word-not-in-ns-sequence
    secondary-tr-word secondary-word-text-relation-sort-predicate
    section section-marker-named section-marker-p
    section-object-containing-token-index section-object-print-routine
    section-structure section-word-count sections-in-article
    see-if-next-token-extends-pattern/s seg-before-conjoins
    segment-analysis-settings segment-coverage
    segment-denotes-interesting-object
    segment-ends-in-multi-word-edge? segment-ends-with-appostrope-s?
    segment-ends-with-single-quote segment-finished
    segment-finished-hook segment-heuristic-p
    segment-heuristic-succeeds? segment-length
    segment-minimal-prefix segment-parsed1 segment-rule-check
    segment-spanned-by-multi-word-edge? segment-started-as-np?
    segment-started-as-vg? segmenter-settings/bbn
    select-best-chunk-triple select-if select-if-any-bound
    select-if-bound select-if-none-bound select-resource
    select-triple-for-region sem-pairs sem-result
    sem-sexp sem-test sem-test-corpus
    semantic-edges-under semantic-mentions-in-current-sentence
    semantic-rule? semi-vowel? semicolon-reader
    semtree semtree-data semtree-nodes
    sent-save-file sent-sem sentence
    sentence-clause-tree sentence-clauses
    sentence-final-punctuation-pattern? sentence-individuals
    sentence-initial? sentence-level-initializations
    sentence-mentions sentence-processing-core sentence-state
    sentence-string sentence-subject sentence-sweep
    sentence-tt-count sentences-in-paragraph
    sentential-adverb? sentential-state sents->sent-cats
    sequence-p sequence-print-routine
    ddm-util:set-auto-gen-symbol-package set-bidir-mapping
    set-ca-action set-categorys-daughters set-citation-file
    set-compound-dli set-context-variable
    set-discourse-history set-dli set-document-index
    set-dot-state set-edge-referent set-entities
    set-equal set-expansion-bounding-form-categories
    set-family-members set-first-char-of-current-line
    set-generic-treetop-action set-illion-distribution
    set-illion-distribution-from-edge set-indenation
    set-indiv-binds set-initial-state
    set-instantiates-information-to-self
    set-intermediaries-of-nary-rule set-labels-from-promulgated-edge
    set-line-length-to-adjust-to set-macro-characters
    set-main-verb set-mentions set-number-multiplicand
    set-number-ones set-number-teens set-number-tens
    set-on-error-action set-paragraph-trace-hook
    set-phrasal-state set-relations set-script-switches
    set-sentence-endpoints set-sentence-status
    set-sentence-subject set-status set-subject
    set-temporal-index set-text-relation-instance-print-args
    set-the-current-article set-tokenizer-table-entry
    set-traces-hook set-traversal-action set-tt-count
    set-up-prot-fam-name-ht set-up-prot-fam-name-syns-ht
    set-used-by set-used-by/anonymous-daughters
    sets-a-name-slot setup-a-peg
    setup-acronym-as-name-for-company setup-acronym-for-bio-entity
    setup-adjective setup-adverb setup-and-delimit-next-chunk
    setup-anticipated-arg-if-appropriate setup-bio
    setup-bound-preposition setup-category-lemma setup-comlex
    setup-common-noun setup-comparative setup-comparatives
    setup-context-for-this-run setup-da-action
    setup-da-action-context setup-da-pattern
    setup-daughter-to-ongoing-section setup-do+demonstative-rules
    setup-epistemic-data-collector setup-explicit-style
    setup-find-or-make setup-first-section-of-document
    setup-for-apple setup-for-appropriations-bill
    setup-for-cbd setup-for-dci/1989-wsj
    setup-for-djns/1990-91 setup-for-djns/1990-91/no-linefeeds
    setup-for-kf-typed-in setup-for-kf-web-page
    setup-for-typed/no-headers setup-for-web-page
    setup-interior-markup-data setup-multiple-initial-edges
    setup-mumble-data setup-only setup-rdata
    setup-return-point setup-returns-from-pptt-&-run
    setup-rule-label setup-session-globals/grammar
    setup-session-globals/parser setup-sibling-to-ongoing-section
    setup-superlative setup-title-as-sentence-container
    setup-toplevel-calls setup-tt-type setup-tt-type/pattern
    setup-unknown-word-by-default setup-verb setup-word-data
    setup-word-denoting-an-obo setup-word-frequency-data
    sf-action/all-contiguous-edges
    sf-action/all-contiguous-edges/no-more-heuristics
    sf-action/discont-edges/no-more-heuristics
    sf-action/discontinuous-edges sf-action/no-edges
    sf-action/some-adjacent-edges
    sf-action/some-adjacent-edges/no-more-heuristics
    sf-action/spanned-segment sf-action/spanned-segment1
    sgml-tag-named sh-body sh-name sh-test
    shared-name-prefix shared-supercs sharpsign-reader
    short-conjunctions-sweep short-string-for-vertex
    short-vvs shorter-from-longer-name show-ambiguities
    show-art-sents show-brackets show-canonical-syntax-tree
    show-chunk-edges show-chunks show-dli-stats
    show-early-rule? show-mention show-mentions
    show-new-verb-definitions show-parse-performance
    show-protein-coercion show-sem-forest show-sem-syn-forest
    show-sent-heading show-sentences show-sents
    show-subcat-use show-warnings show/edges/ending-at
    show/edges/starting-at sibling-to-the-right
    similar-binding&dependency simp-protein simple-eos-check
    simple-label simple-number? simple-sem
    simplify-colons simplify-protein-names
    single-best-edge-from-vector single-best-edge-over-word
    single-capitalized-letter-print-routine
    single-letter-is-amino-acid single-letter-word-for-amino-acid?
    single-nonword-edge-starts-at single-on-variable-on-category
    single-term-rewrite? single-var-blists single-word-edge?
    singular-common-noun-no-determiner? singular-det
    singular-noun-and-present-verb? slot-bindings-by-name
    slot-bindings-by-names slot-bound-in-by-name
    slvd/prepare-for-save-process sm-full-name
    sm-initiation-action sm-interior-markup sm-plist
    sm-terminates-previous sm-termination-action sm-word
    small-binding-list small? snapshot-corpus
    snapshot-pairs snapshot-timestamp snapshots
    soak-up-newline some-edge-satisfying?
    some-name-element-is-new? some-non-initial-in-items
    some-word-is-a-salient-hyphenated-literal sort-adverb-verb
    sort-amounts-of-time sort-bio-terms
    sort-by-count-and-alphabetical sort-by-lhs/cs-rules-after
    sort-by-uid sort-categories
    sort-categories-alphabetically sort-categorys-daughters
    sort-cf&cs-rules-together sort-cfrs
    sort-cfrs-by-order-of-definition sort-cfrs-by-pnames-from-the-left
    sort-cp sort-csrs sort-csrs-by-pnames-from-the-left
    sort-deictic-time-alphabetically sort-directives-alphabetically
    sort-discourse-entries-alphabetically
    sort-discourse-entries-by-frequency
    sort-dotted-rule-against-regular/by-number sort-frequency-list
    sort-frequency-of-event-alphabetically
    sort-genitive-alphabetically sort-individuals-alphabetically
    sort-individuals-alphabetically-for-dm&p
    sort-individuals-by-their-name
    sort-infinitive-relation-alphabetically sort-lists-of-name-items
    sort-loc-heads sort-modifier-alphabetically
    sort-name-items sort-name-words sort-names
    sort-number-individuals-by-value sort-numbers-by-value
    sort-out-conflicting-lhs-of-form-rule sort-out-edges-in-ns-region
    sort-out-head-vs-arg-rnodes-in-binary-rule
    sort-out-incompletely-parsed-there-is-q
    sort-out-introduction-of-inserted-edge
    sort-out-introduction-of-wh-nominal-edge
    sort-out-multiple-edge-&-resume-classification-fsa
    sort-out-multiple-preterminals-for-pnf
    sort-out-name-bracketing-state sort-out-result-of-newline-analysis
    sort-out-which-category-of-treetop-edge-to-prefer
    sort-pair-terms-alphabetically sort-paragraphs
    sort-polywords sort-pronoun-alphabetically
    sort-quantity-alphabetically
    sort-referential-categories-hierarchically
    sort-regular-rule-against-dotted/by-number
    sort-rules-by-number-of-times-used sort-rules-by-rhs
    sort-rules-by-rhs/aux sort-section-objects
    sort-segment-by-end-position
    sort-single-capitalized-letter-alphabetically
    sort-subject-verb-alphabetically sort-terms-alphabetically
    sort-time-units sort-two-cfrs-by-number
    sort-two-dotted-rules-by-number sort-units-alphabetically
    sort-verb-object-alphabetically
    sort-word-frequency-table-most-frequent-first
    sort-word-pos-by-frequency sort-words
    sort-words-by-pos-frequency sort-words-by-token-count
    sort-words/polywords sort-you-do-alphabetically
    sort/categories sortout-edges-over-single-cap-word
    sortout-multiple-edges-over-single-capitalized-word
    sortout-single-edge-over-capitalized-word
    sortout-two-edges-over-single-capitalized-word
    source-of-dotted-rule sp-accept-function sp-accept-states
    sp-clauses sp-initial-literals sp-name sp-plist
    sp-transition-named sp-transition-next-state
    sp-transition-pattern-item sp-transition-plist
    sp-transition-print-string sp-transition-state
    sp-transitions space-prin1 ddm-util:spaced-string
    spaces-word? span-angle-brackets span-as-capitalized-word
    span-covered-by-one-edge? span-curly-brackets
    span-digits-number span-ending-at span-parentheses
    span-participial-adjunct span-phosphorylated-protein
    span-quotation span-region-with-section-marker-edge
    span-separated-subject-and-vp span-square-brackets
    span-starting-at sparser-clauses->ici-like
    sparser-complete-sent-string sparser-indiv->synonyms-fam-members
    sparser-logical-pathname sparser-resource sparser-symbol
    sparserize-string spec-interps special-collection-interp
    special-of-scan specialize-comparative
    specialize-directions specialize-object
    specialize-referent specify-top-edge speed-of-last-run
    spire-roundtrip-corpus spire-tree
    splice-out-binding-from-alist-entry split
    split-alphanumeric split-ns-file-for-trips
    split-off-title-from-name split-sentence-string-on-loc-heads
    spread-sequence-across-ordinals ssbr
    stack-sensitive-newline-fsa standalone-da-execution
    standalone-lexicon-unpacker standard-bbn-settings
    standard-extras standardize-protein-def
    standardized-apply-da-function-action
    start-affix-stripper/word-buffer start-bracket-on?
    start-capitalization-fsa/word-buffer start-cat
    start-dateline-section start-element start-lambda-var
    start-named-element start-new-paragraph
    start-of-ns-region start-pos start-section
    start-sentence start-sgml-section start-timer
    start-var start-vertex-p starting-edge
    starting-edge-just-under starting-forms starts-at-char
    starts-at-pos starts-occasional-polyword starts-polyword
    starts-with-adverb starts-with-prep starts-with-prep?
    starts-with-wh-pronoun? stash-def-indiv-with-id
    stash-redefined-word state state-continuations
    state-id state-is-an-accept-state? state-named
    state-of-interpretation state-plist state-rule-set
    state-sensitive-rightward-march state-set-includes-accept-state/s
    state-symbol stem-form stem-form-of-verb
    stem-of-edges-referent stem-with-final-consonant/s-stripped
    step-dm&p step-reclaimation stest
    still-in-the-chart stipulate-edge-position
    stipulate-simple-mumble-resource stop-timer storage-type
    store-category-documentation store-preposed-aux
    store-word-and-handle-it-later stree strider-setting
    string-acronym? ddm-util:string-append string-final?
    string-for string-for-individual
    string-for-multiple-edges-tt string-for-pattern-item
    string-for-recycled-pos string-for-rule
    string-for-rule/short string-for-stem-of-edges-referent
    string-for/name string-for/name/individual
    string-initial? ddm-util:string-of-n-spaces
    string-of-words-between string-print-form string/category
    string/compass-point string/direction string/initial
    string/name-word string/number string/object
    string/object-as-list string/ordinal string/percent
    string/person-name string/sequence
    string/single-capitalized-letter string/uncategorized-name
    stringify-token stringify-tokens
    strip-explicit-ids-and-downcase strip-item-from-either-end
    strip-model-description strip-model-description1
    strip-model-descriptions strip-single-term-rules
    strip-specializing-slash stronger-bracket
    strongest-version-of-left-boundary-bracket study-word-pos
    style-features style-includes-feature style-init-fn
    style-name style-plist style-rules sub-bag-p
    sub-blists sub-stmt ddm-util:sub1 subcat-for
    subcat-info subcat-instance subcat-label
    subcat-pattern-equal subcat-pattern-p subcat-patterns
    subcat-restriction subcat-slots subcat-source
    subcat-subcats subcat-variable subcategories-of
    subcategorized-variable subj+verb subject
    subject-of-previous-sentence subject-rule subject-search
    subject-search/adjacent-comma
    subject-search/adjacent-comma/no-adj-edge
    subject-search/check-adjacent-edge/comma
    subject-search/edge-after-comma
    subject-search/walk-leftwards-no-comma subject-variable
    sublanguage-settings subord-conj subordinate-comma-clause
    subordinate-comma-subordinate-clause subordinate-conjunction?
    subseqent-reference-by-shortened-name
    subsequent-reference-off-name-word subset-p
    subsumed-mention-edge? subsumed-mention?
    subsumed-with-disambiguation subsumes-interval
    subsuming-variant subsumption-check/complete
    subtype-individual subtype-lattice-point-p
    subtyped-category-p subvert-edge successive-treetops
    successive-treetops/with-positions sucessive-sweeps?
    sucessive-tts/end-of-chart/print suitable-for-and-in-obo
    summarize-parse-performance summary-document-stats
    super-categories super-categories-of
    super-categories-of-list-type super-categories-of1
    super-category super-category-for-pos
    super-category-has-variable-named superc
    supercategory-of-constructed-category
    superlative-adj-noun-compound
    suppress-extra-head-edges-if-necessary sur-string
    survey-bindings sv sv-location sv-prep
    svcomp svcomp/expr svo svo/bio
    svo/bio/expr svo/nominal svo/nominal/adjective
    svo/passive/nominal svo/passive/nominal/expr
    swap-edges-in-vector swap-in-sink-buffer
    swap-top-two-starting-edges swap-variable-in-binding
    sweep-autodef-index-for-missing-objects/add-to-tableau
    sweep-document sweep-for-embedded-sections
    sweep-for-no-space-patterns sweep-for-scan-patterns
    sweep-for-unsaturated-individuals sweep-ns-region
    sweep-obo-terms-for-supercs sweep-obo-terms-to-collect-synonyms
    sweep-sentence-treetops sweep-successive-sentences-from
    sweep-to-end-of-ns-regions sweep-to-span-parentheses
    switch-form-to-comparative switch-form-to-superlative
    switch-settings switch-to-embedded-parsing-protocol
    synchronize-with-segment-readout synchronize/should-we-pause?
    syntactic-functions-defined syntactic-rule?
    syntactically-embedding-edge? table-of-contents-entry
    table-of-contents-entry/string ddm-util:tail-cons take
    take-best-so-far take-citation+check+save ddm-util:take-first-n
    take-the-other-edge take-top-edge-if-they-chain
    takes-adj? takes-internal-data takes-object-complement?
    takes-preposition? takes-wh-nominals?
    tally-rule-ids-in-use tb-segmentation-tester
    tb-to-text-file-reader tb-to-text-file-reader/char-level
    template templatize temporal-index-signature
    ddm-util:temporarily-inhibit-fdefine-warnings tense-implied-by-verb-edge
    term-frequency terminal-edges-sweep terminals-in-segment
    terminals-in-segment/one-string terminate-chart-level-process
    terminate-hidden-section terminate-ongoing-section
    terminate-scan-pattern-search test test-against-comlex
    test-all-citations test-and-apply-simple-copula-pp
    test-aspp2 test-bind-sents test-bio
    test-bio-utt-regressions test-bio-utt-show-bad
    test-bio-utterance test-bio-utterance/split
    test-bio-utterances test-bio-utts->file test-bioagents
    test-buffer-switching test-characters-stored
    test-chars-of-file-length test-citation test-comments
    test-corpus test-dec test-dry-run
    test-dynamic-model test-dynamic-model-corpus
    test-dynamic-model-sentence test-dynamic-model-sents
    test-erk test-for-chunking-regressions
    test-for-conjunction test-function test-hms-article-sents
    test-hms-sentences test-is-longer-than-citation test-jan
    test-load-test test-modules-citations
    test-np-segmentation-for-sexp test-overnight
    test-premod-to-verb test-prescan test-reach-article-sents
    test-reach-sentences test-semantic-applicability
    test-sent test-speed-of-find-word
    test-speed-of-next-token test-speed-of-token-fsa
    test-stemmer test-subcat-rule test-that-the-files-exist
    test-trie test-word-lookup-speed test_aref/one-buffer
    test_chart-filling test_max-testing-speed
    test_next-char/whole-article test_scan-string
    test_tokenizer test_tokenizer-fsa/speed
    test_tokenizer-tokenizing/speed text-relation-named
    text-relation-sorter text-relation-sorter-count-only
    tf-idf that-relative-clause? thatcomp-noun
    thatcomp-variable thatcomp-verb the-edges
    the-master-loader the-missing-slots-are-primitive
    the-next-position-to-scan the-situation ddm-util:then
    there-are-conjunctions? there-are-known-subcat-patterns?
    there-are-loose-adjectives? there-are-loose-adverbs
    there-are-loose-clauses there-are-loose-nps?
    there-are-of-mentions? there-are-parentheses?
    there-are-post-mvb-verbs? there-are-prepositional-phrases
    there-are-prepositions? there-are-pronouns
    there-are-subj+verbs there-are-subordinate-conjunctions?
    there-are-verb-phrases there-are-words-between-segments
    there-is-a-that? there-is-as-polar-question
    there-question/stranded-prep there-s-prep
    thread-pattern-into-existing-trie thread-sequence
    throw-abort-to-analysis-core throw-skip-a-word-to-scan
    tidy-up-segment-globals tie-off-ongoing-sentence-at-eos
    tie-off-paragraph time-analysis ddm-util:time-as-formatted-string
    time-current-value timings title title-element?
    title-elements-in-items title-of-current-section-is
    to-be-at? to-hex to-krisp to-the-right-of
    toc-index toc-section-object-entry
    toc-section-object-entry/string today token-count
    token-strings-in-string tokenize-and-buffer-chars-peeked-at
    tokenizer-entry tomorrow too-short-term-p
    top-edge-at/ending top-edge-at/starting top-edge-on-ev
    top-edge-starting-at top-edge-used-in
    top-edges-for-proteins top-edges-setting
    top-edges-setting/assetnet top-edges-setting/ddm
    top-lattice-point-p top-level-wh-question?
    top-n-frequent-words toplevel-tags total-count sparser:tr
    tr-action tr-arguments tr-class tr-class-name
    tr-class-slots tr-doc tr-instances tr-print-form
    tr-relation tr-slot-names tr-super-classes
    tr-table tr/expr trace-abbrev-check-found-nothing
    trace-abbrev-check-found-one trace-actions-on-word
    trace-add-dependent-location
    trace-added-new-downlink-from-lp-for-lp trace-added-psi-to-v+v
    trace-adding-entity-to-situation
    trace-adding-new-instance-of-category
    trace-adding-new-instance-of-known-object
    trace-adding-paragraph-section-marker
    trace-adding-realization-type trace-adding-relation-to-situation
    trace-adding-to-container trace-adjudicate-after-edge-fsa
    trace-adjudicate-after-pnf
    trace-adjudicate-after-successfur-pattern-scan
    trace-adjudicate-new-open-bracket
    trace-adjudicate-result-of-scan-pattern-after-fsas-ran
    trace-adjudicate-result-of-word-fsa
    trace-adjudicate-status-after-fsa-returned
    trace-adjudicating-fsa-result trace-ae/check-against-neighbors
    trace-ae/checking-left-neighbor trace-ae/checking-right-neighbor
    trace-ae/complete trace-ae/dispatch
    trace-ae/do-pending-edges trace-ae/install-preterminals
    trace-ae/scan trace-ae/word-scanned
    trace-after-action-on-segments trace-after-paragraph-action
    trace-after-pnf trace-after-quiescence
    trace-allocating-a-psi-object trace-analyze-pp_t+t
    trace-anaphor-conditioned-to trace-anaphora-looking-at-edge
    trace-annotating-daughter trace-annotating-form-rule
    trace-annotating-pair trace-annotating-ref/head
    trace-annotations trace-anounce-pair-term
    trace-applying-ha-to-segment trace-applying-subchart-function
    trace-arc-leads-to-vertex trace-arc-matches-tt?
    trace-arc-matches-tt?/matches trace-arc-matches-tt?/no-match
    trace-asking-[-on-pos trace-asking-]-on-pos
    trace-assess-terminal trace-bailing-from-ns/end-pos-is-the-string
    trace-bailing-from-ns/end-pos-less-than-start-pos
    trace-bailing-from-ns/start-pos-is-the-string trace-beginning-da
    trace-begins-after trace-begins-before trace-below+note
    trace-between+collection trace-bind-open-var
    trace-bind-open-var/relation-not-psi trace-bind-to-psi-open-in
    trace-binding-indexing trace-both-form-labels-have-ids
    trace-both-known trace-boundary-continuation
    trace-bracket-ends-the-segment? trace-bracket-is-there
    trace-bracket-isnt-there trace-brackets
    trace-brackets-introduced
    trace-c&r/continuing-at-p-after-skipping-lc-word
    trace-c&r/continuing-at-result-pos trace-c3
    trace-c3-compose trace-c3-composing
    trace-c3-composing-result trace-c3-no-rule
    trace-c3-phrasal-head trace-c3-segment-advancing-to
    trace-c3-segment-edge trace-c3-segment-parse
    trace-c3-segment-parse-value trace-c3-segment-scan-ended
    trace-c3-segment-scan-start trace-ca-hook trace-ca-search
    trace-ca/found-it trace-ca/search-hit-ss
    trace-ca/search-maxed-out trace-ca/searching-left-for
    trace-ca/searching-next-item trace-caching-rnode
    trace-calling-conj-checkout-routine-at
    trace-calling-conj-treetop-hook trace-calling-sdm/analyze-segment
    trace-can-we-whack-pair
    trace-cannot-find-disjoint-value-restrictions
    trace-cap-seq-continues-from-here? trace-cap-seq-continues/status
    trace-cap-seq-looking-at trace-carefully-compose
    trace-carrying-out trace-cat-ids-on-left-form-label
    trace-cat-ids-on-right-form-label trace-category-hasnt-a-schema
    trace-changing-type-of trace-check-edge-fsa-trigger
    trace-check-for-either-form-rule
    trace-check-for-initial-before-position trace-check-for-polywords
    trace-check-for-right-extensions/forest
    trace-check-for-uniform-no-space-sequence
    trace-check-for-verb-preposition-pair
    trace-check-for-[-from-prior-word
    trace-check-for-[-from-word-after
    trace-check-for-]-from-edge-after
    trace-check-for-]-from-prior-word
    trace-check-for-]-from-word-after
    trace-check-for/initiate-scan-patterns
    trace-check-fsa-edge-for-brackets
    trace-check-fsa-edge-for-leading-[-bracket
    trace-check-fsa-edge-for-trailing-brackets
    trace-check-fsa-edge-for-trailing-[-bracket
    trace-check-if-word-starts-segment trace-check-pnf-and-continue
    trace-check-preterminal-edges trace-check-segment-finished-hook
    trace-check-word-level-fsa-trigger trace-checking-extension-from
    trace-checking-for-ca-action
    trace-checking-for-scan-pattern-extension
    trace-checking-for-scan-pattern-transition
    trace-checking-form-label-category-rules
    trace-checking-pattern-item-to-arc
    trace-checking-pattern-item-to-arcs-at
    trace-checking-starting-pair
    trace-checkout-continuation-for-non-punctuation
    trace-checkout-punctuation-for-capseq trace-chunk-loop-next-edge
    trace-chunker trace-chunker-moving-to
    trace-chunker-next-edges trace-clause-without-wh-element
    trace-close-paren-seen trace-closing-pending/initiating-new
    trace-collection+items trace-comma-3tt-pattern
    trace-comma-to-left-of-vp trace-completed-default-binary-edge
    trace-completed-sgml-end trace-completed-sgml-start
    trace-completing trace-completion trace-completion-hook
    trace-compose-other-of trace-composed-qualifier-with-head
    trace-composition trace-composition-failed
    trace-composition-succeeded trace-conditioning-anaphor-edge
    trace-conditions-for-amino-collection-failed
    trace-conditions-for-bio-complex-failed
    trace-conditions-for-protein-collection-failed
    trace-conj-edges-to-each-side trace-conj-flag-still-up-in-speech
    trace-conjoined-edge
    trace-conjoined-edges-dont-have-individuals-as-referents
    trace-conjoining-multiple-edges/comma trace-conjoining-two-edges
    trace-conjunction trace-conjunction-hook
    trace-considering-edge-level-fsas
    trace-considering-word-level-fsas trace-consistent-with-chunk
    trace-cont-caps-edge trace-continue-after-pnf-returned-nil
    trace-continuing-over-lc trace-could-not-parse-leading-pp
    trace-couldnt-find-subject-rule
    trace-created-lp-extending-downlinks
    trace-created-lp-to-extend-lp-via-var
    trace-creating-category-dh-entry trace-current-incr-state-is
    trace-cwlft-cont trace-da trace-da-applying-fn-to-args
    trace-da-didnt-match-any-arc trace-da-dispatch
    trace-da-executing-action trace-da-execution
    trace-da-fn-failed trace-da-fn-returned-edge
    trace-da-hook trace-da-match-extends
    trace-da-pattern-matched trace-da-pattern-not-matched
    trace-da-question trace-dealing-with-unknown-word-stared-ot
    trace-decoding-definite-reference-to
    trace-defaulting-two-word-hyphen trace-defining-as-given-morph
    trace-defining-lemma-as-given-morph
    trace-defining-unknown-word-from-morph
    trace-defnp-category-has-entry trace-defnp-made-new-individual
    trace-defnp-no-entry trace-defnp-returning
    trace-delay-unknown-judgment trace-delimit-chunk-start
    trace-delimited-c3-segment trace-delimited-chunk
    trace-delimited-ill-formed-chunk
    trace-did-not-find-named-object-for-name
    trace-did-not-find-person-with-name
    trace-different-two-conjunction-pattern
    trace-digit-fsa-returned-to-start trace-digit-fsa-returning
    trace-digit-fsa-scanned trace-digits-fsa
    trace-direct-referent trace-direction+dependent-location
    trace-direction+multiple-dependent-location trace-direction+object
    trace-disambig-replacing-top-edge trace-discontinuous-edges
    trace-discontinuous/no-more-heuristics trace-discourse-structure
    trace-dm&p trace-dm&p/all-new-words-cap-seq
    trace-dm&p/function-word-mined trace-dm&p/segment-is-function-word
    trace-dm&p/single-span-cap-seq trace-dm&p/some-known-cap-seq
    trace-dm/scan-words trace-do-treetop-loop
    trace-do-treetop-triggers trace-does-not-compose-with
    trace-does-not-take-preposition trace-doing-dm&p-on-segment
    trace-dropping-final-punct-of-ns-span trace-dt-dereference-pn
    trace-dt-no-restriction trace-dt-no-type-information
    trace-dt-restriction-on-pronoun trace-earley
    trace-early-back-to-start trace-early-criteria-failed
    trace-early-failed trace-early-left-mid-right
    trace-early-rule-check-at trace-early-rules
    trace-early-rules-checking trace-early-succeeded
    trace-early-sweep-looping trace-ecomplete
    trace-edge-after-np-is-a-boundary trace-edge-already-on-position
    trace-edge-check trace-edge-creation
    trace-edge-fsa-ended-at trace-edge-multiplication
    trace-edge-starts-at-seg-boundary trace-edges
    trace-edges-installed trace-efsa-failed
    trace-efsa-succeeded trace-efsa-trying
    trace-end-of-source-check trace-ending-markup-pair
    trace-ending-segment-zeroing-opening-bracket trace-ends-after
    trace-ends-before trace-entering-sentence-sweep-loop
    trace-eos-adjacent-punctuation trace-eos-check
    trace-eos-fall-through-accept trace-eos-followed-by-a-period
    trace-eos-following-lowercase trace-eos-implicit-abbreviation
    trace-eos-initial-author-pattern trace-eos-lookahead
    trace-eos-lookahead-start trace-eos-mult-char-next-word
    trace-eos-next-word trace-eos-no-pnf-and-next-caps
    trace-eos-no-space-before-trailing-digit
    trace-eos-period-surrounded-by-digits
    trace-eos-period-would-be-under-pw trace-eos-pre-read-sentences
    trace-eos-preceded-by-angstrom trace-eos-reached-eos
    trace-eos-reading-document trace-eos-scanning-terminals/pw
    trace-eos-separated-by-space trace-eos-space-before-trailing-digit
    trace-eos-sweep-returning trace-eos-terminate-chart-level
    trace-eos-two-initials trace-epredict trace-escan
    trace-establish-pn-referent trace-establishing-section
    trace-examine-capitalized-sequence trace-examining
    trace-exending-span-of-mention trace-export
    trace-exporting trace-exporting-referent
    trace-extending-dh-entry trace-extending-psi
    trace-extending-with-subsuming-instance
    trace-extending-with-subsuming-instance/dl trace-extension
    trace-failed-subcat-restriction
    trace-figure-out-where-to-start-on-next-pos
    trace-filling-in-between-subj-and-verb
    trace-filter-choose-between-two-triples
    trace-filter-selected-triple trace-filter-takes-left
    trace-filter-takes-right trace-filter-taking-right-most-triple
    trace-find-ns-region-start trace-find-psi
    trace-find-psi-instances-of-type trace-find-psi-with/no-c+v
    trace-find-psi-with/no-c+v-for trace-find-psi-with/no-v+v-for
    trace-find-rule-for-edge-pair trace-find-v+v
    trace-find-v+v-new-c+v-table trace-find-word
    trace-find/make-psi-extending-by-binding-with
    trace-finished-section-object
    trace-first-or-second-is-bracket-punct
    trace-first-section-object-in-document
    trace-flushing-empty-paragraph trace-forest
    trace-forest-edges trace-forest-level
    trace-forest-level-turned-off trace-forest-needs-scan
    trace-forest-parse-returned trace-forest-transitions
    trace-forest/extending-from-rightmost-new-edge
    trace-forest/found-edge trace-forest/left-boundary-reached
    trace-forest/left-boundary-reached/looking-leftwards
    trace-forest/looking-leftwards-from
    trace-forest/looking-leftwards/mult
    trace-forest/mult-adjacent-leftwards-to-edge
    trace-forest/mult-adjacent-to-mult
    trace-forest/mult-nothing-adjacent-moving-rightward
    trace-forest/no-edges trace-forest/reached-quescence
    trace-forest/right-ext/adjacent-mult
    trace-forest/right-ext/adjacent-single
    trace-forest/right-ext/no-edge trace-forest/right-extension
    trace-forest/right-looking-edge-extends
    trace-forest/single-adjacent-leftwards-to-edge
    trace-forest/single-adjacent-to-mult
    trace-forest/single-nothing-adjacent-moving-rightward
    trace-forest/start-of-chart trace-form-multiply-failed
    trace-found-another-way-down-to-existing-lp trace-found-c+v
    trace-found-existing-referent-for-pn
    trace-found-named-obj-with-name trace-found-or-made-psi
    trace-found-person-with-name trace-found-psi
    trace-found-psi-extension trace-found-psi-instance-of-type
    trace-found-rule-for-pair trace-found-rule-of-form
    trace-found-semantic-rule trace-found-subsequent-reference
    trace-found-syntactic-rule trace-found-uncategoried-name
    trace-found-v+v trace-fraction+note
    trace-fsa-returned-an-edge trace-fsas
    trace-fw-no-rule-set trace-fw-no-rule-set/lc
    trace-fw-no-rule-set/no-variant-with-rs
    trace-fw-no-rule-set/no-variants
    trace-fw-no-rule-set/variant-wrong-cap trace-fw-no-symbol
    trace-fw-symbol-unbound trace-fw-variant-has-rule-set
    trace-fw-variant-no-associated-category
    trace-get-lp-extending-parent-by-variable
    trace-ha-both-head-and-prefix trace-ha-neither-prefix-nor-head
    trace-ha-prefix-only trace-handle-leading-brackets-off-fsa-edge
    trace-handle-parentheses
    trace-handle-trailing-brackets-off-fsa-edge
    trace-handling-unknown-word-stared-ot trace-has-ca-action
    trace-has-location+location trace-has-no-ca-action
    trace-has-single-term-rewrites trace-have-to-make-self-node
    trace-hidden-markup trace-higher-subject-not-found
    trace-history trace-hyphen-specialist
    trace-identifying-chunks-in trace-ignoring-debris-analysis
    trace-ignoring-multple-form-rule trace-ignoring-personal-pronouns
    trace-ignoring-reflexive-pronoun trace-ignoring-wh-pronoun
    trace-impact/checking-edge trace-impact/moving-quiescence
    trace-impact/moving-tt-boundary trace-inc-at-position
    trace-inc-edge/s-over-word trace-inc-looking-at
    trace-incorporate-into-situation trace-incr-binding-variable
    trace-incr-expecting-var-type trace-incr-instantiated-category
    trace-incr-segments trace-incseg-start
    trace-initial-fired-fsa trace-initial-found
    trace-initial-made-edge trace-initiating-pnf
    trace-inititate-top-edges-protocol trace-inseg-at-eos
    trace-inseg-chunk-start-form trace-inseg-edge-collector-resume-at
    trace-inseg-finish-incompatible trace-inseg-finished-on-null-form
    trace-inseg-installed-edges trace-inseg-loop-scan
    trace-inseg-loop-with-at trace-inseg-next-form
    trace-inseg-parsing-between trace-inseg-skip-to
    trace-inseg-storing-edge trace-install/actual-capitalization
    trace-install/already-spanned trace-install/caps-variations-are
    trace-install/has-rule-set
    trace-install/has-variants-with-other-capitalization
    trace-install/no-rule-set
    trace-install/one-doesnt-match-actual-state
    trace-installing-edges-over-word/un/known
    trace-instantiated-an-individual
    trace-instantiating-individual-with-binding
    trace-instantiating-section-object trace-inter-segment-boundary
    trace-interpeting-chunk trace-interpreting-name-as-person
    trace-interpreting-ne-discourse-entry-as-person
    trace-introduce-leading-brackets
    trace-introduce-leading-brackets-from-edge-form-labels
    trace-introduce-right-side-brackets trace-introduce-terminal-edges
    trace-introduce-trailing-brackets
    trace-introduce-trailing-brackets-from-edge-form-labels
    trace-invisible-markup trace-is-consistent-with-chunk
    trace-is-not-consistent-with-chunk
    trace-island-driven-forest-parse trace-island-driver-forest-pass-2
    trace-island-driving trace-islands-pass-2 trace-keyword?
    trace-known-entry trace-lc-introduces-]-but-actual-doesnt
    trace-leading-brackets-introduced
    trace-leading-hidden-markup-check trace-left-boundary-reached
    trace-left-form-id trace-left-form-id-failed
    trace-left-form-id-succeeded
    trace-left-form/right-category-succeeded trace-left-right-of-of
    trace-length-of-long-segment trace-lexicon-unpacking
    trace-lifting-wh-element trace-lifting-wh-element-returns
    trace-located-known-psi trace-look-ahead-for-initial
    trace-look-for-prep-binders trace-looking-at-edge-after-verb
    trace-looking-at-ns-segment trace-looking-for-analyzable-debris
    trace-looking-for-da-pattern-between
    trace-looking-for-opportunistic-binding
    trace-looking-for-person-with-name
    trace-looking-for-short-conjuncts trace-looking-for-subtype-unit
    trace-looking-for-syntactic-combination
    trace-looking-leftward-from-np-at
    trace-looking-right-for-adjacent-edge trace-looking-right-from
    trace-lower-case-extends-over
    trace-lower-case-non-boundary-extends-over trace-lp-construction
    trace-lp-with-var-already-there-via-downpointers
    trace-made-arc-for trace-made-c+v trace-made-edge
    trace-made-hyphenated-pair trace-made-mention
    trace-made-more-saturated-psi trace-made-named-object-with-name
    trace-made-new-psi trace-made-new-psi-for-subtype
    trace-made-person-with-name trace-made-psi-at-lp
    trace-made-psi-for-type/psi trace-made-psi-with-just-a-type
    trace-made-v+v trace-make-object-dependent-location
    trace-make-psi-for-type trace-make-psi-for-type/found-existing
    trace-make-right-head-with-agent-left trace-make-self-lp
    trace-make-this-a-question trace-make-top-v+v
    trace-make-uncategorized-name trace-make-word/entry
    trace-make-word/entry-and-properties trace-make-word/properties
    trace-make/psi trace-making-a-amino-collection
    trace-making-a-bio-complex trace-making-a-protein-collection
    trace-making-edge-over-digit-sequence
    trace-making-edge-over-literal
    trace-making-edge-over-unknown-word/morph trace-making-new-mention
    trace-making-new-psi-for-subtype trace-making-ns-pair-on
    trace-making-psi-from-scratch trace-making-single-term-edge
    trace-making-two-part-label trace-making-v+v-and-psi
    trace-march-back-from-the-right/forest
    trace-march-back-one-position/forest trace-matching-open-is-at
    trace-matching-open-paren-not-found trace-mentioned-in-rule
    trace-methods trace-mine-vg
    trace-mine-vg/adv-check-before-ing/en trace-mine-vg/adverb-check
    trace-mine-vg/ends-seg-interpreting-as-verb
    trace-mine-vg/ing/en-check trace-mine-vg/next-tt
    trace-mined-classifier-term trace-mined-head-term
    trace-mined-verb trace-mining-classifier
    trace-mining-first-known-second-new
    trace-mining-first-new-second-known trace-mining-head
    trace-mining-noun/verb trace-mining-two-new
    trace-mining-unmarked-term trace-mining-unmarked-term/stem
    trace-mining-verb trace-modified_modifier+t
    trace-modifier+noun_modifier+t trace-modifier+noun_t+t
    trace-morph-edge-with-generated-category? trace-morphology
    trace-moved-ns-start-pos-in-front-of-edge
    trace-moved-ns-start-pos-in-front-of-pw
    trace-moved-to-forest-level trace-moving-dot
    trace-moving-quescence-ptr-before-edge trace-moving-to-do-treetops
    trace-moving-to-forest-level
    trace-moving-to-forest-level/conj/edge
    trace-moving-to-forest-level/conj/no-edge sparser:trace-msg
    trace-msg/ad-lib trace-muliply-categories
    trace-mult/check-form-options trace-mult/ids-on-form-label
    trace-mult/just-left-ids trace-mult/just-right-ids
    trace-mult/right-category-left-form_category-id
    trace-multi-dependent-location+partonomic
    trace-multiple-completions trace-multiply
    trace-multiply-edges trace-multiply-failed
    trace-multiply-form trace-multiply-succeeded
    trace-multiply-threading trace-n-default-triples
    trace-n-priority-triples trace-n-triples-apply
    trace-name-category-is trace-neither-form-label-has-form-ids
    trace-neither-has-category-id trace-network
    trace-network-flow trace-new-conjunction-pattern
    trace-new-edge-assigns-brackets
    trace-new-edge-incorporating-parens trace-new-entry
    trace-new-forest-driver trace-new-rdata-entry
    trace-new-unmarked-term trace-next+month
    trace-next-da-vertex trace-next-edge-is
    trace-next-terminal-to-scan trace-next-tt-swept
    trace-nl-finished-paragraph trace-nl-immediate-newline
    trace-no-3tt-da-pattern trace-no-brackets-in-front-of
    trace-no-brackets-introduced trace-no-compatible-referent
    trace-no-conjunction-heuristics-applied
    trace-no-da-pattern-started-by
    trace-no-discourse-entries-for-people trace-no-document-stream
    trace-no-edge-to-the-left-of trace-no-edge-to-the-right-of
    trace-no-edges trace-no-established-pass-2-patterns-applied
    trace-no-existing-psi-binding trace-no-existing-referent-for-pn
    trace-no-form-id-on-left-form-label
    trace-no-form-id-on-right-form-label
    trace-no-form-label-on-left-edge trace-no-form-label-on-right-edge
    trace-no-heuristics-for trace-no-ids-on-either-edge
    trace-no-left-category-label-id trace-no-left-form-id
    trace-no-neighbors-to-the-left trace-no-neighbors-to-the-right
    trace-no-ns-pattern-matched trace-no-paired-punct-hook
    trace-no-pattern-initiated/source-start
    trace-no-pattern-transition trace-no-prior-section
    trace-no-psi-extension trace-no-psi-found
    trace-no-referent-to-export trace-no-result-from-da
    trace-no-right-category-id trace-no-right-form-id
    trace-no-rr-made trace-no-rule-for-pair
    trace-no-rule-of-form trace-no-rule-to-whack-pair
    trace-no-rules-mention-left-form-label
    trace-no-rules-mention-right-form-label
    trace-no-scan-pattern-initiated trace-no-semantic-rule
    trace-no-sequence-for-nws trace-no-smashing-tt1-not-major
    trace-no-space-at trace-no-space-initial-long-edge
    trace-no-space-made-edge trace-no-space-sequence-made-word
    trace-no-space-sequence-started-at
    trace-no-specific-pattern-trying-uniform
    trace-no-style-with-stream trace-no-subject-or-verb-edges
    trace-no-syntactic-rule trace-no-treetops-remain-exiting
    trace-no-uncategoried-name-for trace-no-v+v-found
    trace-no-value-for-var-in-indiv
    trace-no-whitespace-at-pos-pattern-search-scanned
    trace-non-boundary-continuation
    trace-non-boundary-continuation/bracket-checked
    trace-non-syntactic-rules-used?
    trace-normal-segment-finished-options
    trace-not-binding-to-because-not-open-in trace-not-c3-phrasal-head
    trace-not-rc-pattern trace-not-reifying-because-there-was-a-reason
    trace-not-using-rule/verb-in-np-context
    trace-nothing-open-defaulting-to-head trace-noticed-pronoun
    trace-noticed-term trace-noting-instance
    trace-np+pp/np-is-partonomic trace-np-buried-under-vp
    trace-np-check-right-expansion trace-np-did-not-extend-rightward
    trace-np-extended-rightward trace-np-extends-rightwards?
    trace-np-leftwards-composed trace-np-leftwards-did-not-compose
    trace-np-not-right-bounded trace-np-pp-composition
    trace-np-pp-of-np-partonomic trace-ns-adding-word
    trace-ns-considering-sequence-starting-with trace-ns-edge-pattern
    trace-ns-edge-sweep trace-ns-find-region-end
    trace-ns-find-region-end/includes
    trace-ns-find-region-end/stops-at
    trace-ns-first-word-is-bracket-punct trace-ns-found-region-start
    trace-ns-found-subject-var-in trace-ns-found-usable-rule
    trace-ns-hyphen-and-colon-patterns
    trace-ns-identify-ns-pattern-between
    trace-ns-installing-terminal-edges trace-ns-layout
    trace-ns-looking-at-colon-patterns
    trace-ns-looking-at-hyphen-patterns
    trace-ns-looking-at-slash-patterns trace-ns-made-approximation
    trace-ns-make-number-plus-error trace-ns-making-word-to-match-edge
    trace-ns-move-over-edge trace-ns-next-position-is
    trace-ns-no-subject-var-in trace-ns-no-variable-relating-them
    trace-ns-one-hyphen-patterns trace-ns-other-punct
    trace-ns-parse-between-bounds trace-ns-parsing-between
    trace-ns-pattern-includes-edges
    trace-ns-punt-left-referent-is-a-word trace-ns-reached-eos-at
    trace-ns-return-because-bracket-punct
    trace-ns-return-because-whitespace
    trace-ns-return-punch-terminates-seq
    trace-ns-return-word-never-in-ns-seq trace-ns-returning-position
    trace-ns-scanned-punctuation trace-ns-scanned-word
    trace-ns-scare-quote trace-ns-second-subcategizes-for-first
    trace-ns-second-word-not-in-ns-sequence trace-ns-segment-layout
    trace-ns-sequences trace-ns-slash-hyphen-combination
    trace-ns-sort-out-pattern-with-edges trace-ns-source-exhausted
    trace-ns-spanned-by-edge trace-ns-start-tt-pos
    trace-ns-taking-default trace-ns-terminating-punctuation
    trace-ns-two-hyphen-patterns trace-ns-used-the-single-variable-on
    trace-ns-using-non-subject-variable-of
    trace-ns-using-subject-variable-of trace-ns-whitespace
    trace-ns-word-sweep trace-number+part-of-a-sequence
    trace-number-colon-number-default-edge trace-number-words
    trace-nw-compute-value trace-nw-ended-with
    trace-nw-fsa-hit-a-comma trace-nw-installing-edge
    trace-nw-made-edge trace-nw-not-number-word
    trace-nw-number-number-word trace-nw-starting-with
    trace-nw-terminating-at trace-of-left-composition
    trace-of-left-failed trace-of-mention
    trace-of-right-composition trace-of-right-failed
    trace-one-or-both/does-not-have-category-multiplier
    trace-only-l/r-has-category-ids trace-open-paren-seen
    trace-opening-bracket-at-p trace-opening-bracket-refined
    trace-ordinal+part-of-a-sequence trace-out-path-to-wh-element
    trace-p2-applying-rules trace-p2-converage-is
    trace-p2-da-returned-edge trace-p2-no-use-applying-rules
    trace-pair-term-premature trace-paired-punct-hook
    trace-paired-punct-interior trace-pairs-in-segment
    trace-pairs-to-consider-whacking
    trace-para-when-initialzing-sentences trace-paragraph-finish
    trace-paragraph-start trace-paragraphs trace-parens-after
    trace-parentheses trace-parenthesis-edge
    trace-parse-at-the-segment-level trace-parse-edges
    trace-parse-leading-pp trace-parsing-chunk-interior-of
    trace-parsing-of-segment-finished
    trace-part-of-a-sequence+partonomic
    trace-pattern-item-didnt-match-anything
    trace-pattern-item-matched-arc trace-pattern-search-scanned-pos
    trace-pattern-search-terminated-by-non-extension
    trace-pattern-search-terminated-by-whitespace
    trace-pattern-transition-found trace-peeking-rightward-with
    trace-period-at-p-not-eos trace-period-hook
    trace-period-hook-sentence-end trace-pfwpnf
    trace-pfwpnf-edge trace-pfwpnf/fsa-succeeded trace-pnf
    trace-pnf-adding-close-bracket trace-pnf-items-no-known-sequence
    trace-pnf-network trace-pnf-resetting-open-bracket
    trace-pnf/abbreviation trace-pnf/aborted-during-classification
    trace-pnf/caps-after-of trace-pnf/classification
    trace-pnf/classifying-one-word-span
    trace-pnf/classifying-remainder trace-pnf/classifying-span
    trace-pnf/edges-over-word trace-pnf/fn-word-at-sentence-start
    trace-pnf/initial trace-pnf/items-for-unknown-word
    trace-pnf/next-pos-introduces-]
    trace-pnf/next-pos-is-capitalized-continuing-scan
    trace-pnf/next-pos-is-digits trace-pnf/next-pos-is-lowercase
    trace-pnf/next-pos-is-punct trace-pnf/no-abbreviation
    trace-pnf/no-edges-over-word trace-pnf/no-initial
    trace-pnf/of-bad-prefix trace-pnf/one-edge-over-multi-word-span
    trace-pnf/parsing-span trace-pnf/preempted trace-pnf/pw
    trace-pnf/sequence-ended trace-pnf/single-edge-is
    trace-pnf/sm-encountered trace-pnf/stop-at-close-bracket
    trace-pnf/]-ignored-because-of-initial trace-polyword-start
    trace-polyword-sweep-loop trace-polywords
    trace-popping-off-section-stack trace-popping-path-to
    trace-pos-already-had-fsas-done trace-possessive-finished
    trace-pp-not-single-span trace-pptt
    trace-pptt/edge-at-quiessence trace-pptt/no-edges
    trace-pptt/quiessence-reached trace-pptt/starting
    trace-predicted-path trace-prediction-trigger
    trace-prefix-is-content-word trace-prefix-is-informative
    trace-prefix-is-polyword trace-prep-composes-to-form
    trace-prep-followed-by trace-prepopulation
    trace-prior-section trace-pronoun-lifo-compatible
    trace-pronoun-no-previous-subject trace-pronoun-not-conditioned
    trace-pronoun-resolved-to trace-pronoun.[-moves-boundary
    trace-pronouns trace-psi
    trace-psi-binding-open-relation-is trace-psi-construction
    trace-psi/find trace-pts trace-pts-coverage
    trace-pts/angle-bracket-seen trace-pts/check-extension-value
    trace-pts/checking-seg-extension trace-pts/no-final-edge
    trace-pts/period-seen trace-pts/seg-doesnt-extend
    trace-pts/seg-extends trace-pts/word-isnt-a-significant-boundary
    trace-punct.[-moves-boundary trace-pushing-onto-section-stack
    trace-pw-accept-state trace-pw-caps-variant
    trace-pw-complete-looking-further
    trace-pw-created-from-hypenate-word-pair
    trace-pw-doesnt-extend-taking-complete trace-pw-found-caps-variant
    trace-pw-no-caps-variant trace-pw-no-rule-set-on
    trace-pw-not-found trace-pw-sweep-returned
    trace-pw-was-found trace-pw-word-check
    trace-pw-word-does-not-initiate-polywords
    trace-pw-word-doesnt-extend trace-pw-word-extends
    trace-questions trace-rdata-annotating-base-case
    trace-rdata-annotating-individual trace-read-through-scanned-eos
    trace-reclaimation trace-recognized-sequence-as
    trace-recording-pn-mention-v/r trace-redefining-da-rule
    trace-redundant-assignments-to-left
    trace-redundant-assignments-to-right
    trace-ref-returning-individual trace-ref-unary-rule
    trace-ref/binding trace-ref/binding-result
    trace-ref/head-base-from-category trace-ref/head-base-from-mixin
    trace-referent-creation trace-referent-wasnt-an-individual
    trace-reified-ns-name trace-relation-open-in
    trace-relative-clause-succeeded
    trace-relative-location+has-location
    trace-relative-location+location
    trace-relative-location+object-dependent-location
    trace-relative-location+pronoun
    trace-resolve-hyphen-b/w-two-words/missing-an-edge
    trace-resolve-hyphen-before trace-resolve-hyphen-between-two-terms
    trace-resolve-hyphen-between-two-words
    trace-resolve-hyphen-trailing
    trace-resolve-hyphens-between-three-words
    trace-resolve-slash-segment
    trace-resolving-pronoun/previous-subject
    trace-respan-no-people-in-dn trace-restriction-on-pronoun
    trace-result-of-making-psi-by-extending-existing-one
    trace-resume-after-error trace-resume-prescanned-segment
    trace-resuming-da-walk-at trace-retrieved-psi-from-among-v+v
    trace-retrieved-psi-from-v+v
    trace-return-to-scan-level-from-null-span
    trace-returning-because-its-a-conjunction
    trace-returning-to-word-level-from-null-span
    trace-reusing-rdata-entry trace-right-form-id
    trace-right-form-id-failed trace-right-form-id-succeeded
    trace-right-form/left-category-succeeded trace-rr
    trace-rr-of-segment trace-rule-field-is-a-list
    trace-rule-is-invalid trace-rule-is-valid
    trace-rule-source trace-rule-varies-known-trie
    trace-rules trace-rules-validity
    trace-s-on-prior-word-apostrophe-afterwards
    trace-salient-hyphenated-literal trace-scan
    trace-scan-completing trace-scan-dispatch
    trace-scan-from-word-level-actions trace-scan-next-pos
    trace-scan-next-segment trace-scan-pattern-extension-failed
    trace-scan-pattern-extension-succeeded
    trace-scan-pattern-prefix-found
    trace-scan-pattern-search-initiated
    trace-scan-pattern-search-reached-accept-state/s
    trace-scan-patterns trace-scan-sentence-start
    trace-scan-terminals-loop trace-scan-terminals-loop-finished
    trace-scan-terminals-of-sentence trace-scan-to-eof-start-pos
    trace-scan-to-eos/start trace-scan-treetops/from-right
    trace-scan-treetops/prefixed
    trace-scan-under-edge-covering-whole-segment
    trace-scan-went-beyond-inc-term trace-scan-words-loop
    trace-scanned-pw-ended-at trace-scanned-terminal-edges
    trace-scanning-done trace-scanning-terminals-of
    trace-scare-quotes-creating-edge-around
    trace-scare-quotes-wrong-number-of-words trace-sdm&p
    trace-sdm-all-contiguous-edges
    trace-sdm-all-contiguous-edges/new-coverage
    trace-sdm-all-contiguous-edges/running-parser
    trace-sdm-discontinuous-edges trace-sdm-no-edges
    trace-sdm-some-adjacent-edges trace-sdm-span-segment
    trace-section-is-daughter trace-section-is-sibling
    trace-section-objects trace-section-stack trace-sections
    trace-seek-person-for-pronoun trace-seg-march/multiple-end-at
    trace-seg-march/nothing-there trace-seg-march/single-ends-at
    trace-segment-completely-finished trace-segment-completion
    trace-segment-delimited trace-segment-does-not-end
    trace-segment-ends trace-segment-finished
    trace-segment-is-a-section-marker trace-segment-ns-pattern
    trace-segment-parsed1 trace-segment-reopened-by-verb-verb
    trace-segment-starts-with-np-specifier trace-segmentation
    trace-segments trace-selected-best-triple
    trace-selecting-first-for-adjg trace-self-lp-already-exists
    trace-sequencer+part-of-a-sequence trace-set-sentence-subject
    trace-seting-arg trace-setting-conjunction-pos-before
    trace-setting-dot-state-to trace-setting-head
    trace-setting-rnode-arg trace-setting-rnode-head
    trace-setting-subject-to trace-setup-pptt
    trace-sf-action/all-contiguous-edges
    trace-sf-action/all-contiguous-edges/no-more-heuristics
    trace-sf-action/some-adjacent-edges/no-more-heuristics
    trace-sf-action/spanned-segment1 trace-sgml
    trace-sgml-start-fn trace-sgml-termination-fn
    trace-short-conjunctions-sweep trace-short-leftward-composition
    trace-short-leftward-did-not-compose trace-short-leftward-neighbor
    trace-short-leftward-neighbor-is-boundary trace-show-annotation
    trace-simple-unary-dispatch trace-single-word-followed-by-colon
    trace-site-bound-t-c+v trace-site-bound-to
    trace-slash-ns-pattern trace-slash-recursive-resolution
    trace-slash-segment-covered trace-smash-together
    trace-smashed-together-edge trace-some-adjacent-edges
    trace-sp-empty-paragraph trace-sp-eos-return
    trace-sp-null-next-return trace-sp-para-content
    trace-space-before trace-spanned-segment
    trace-start-scan-to-eof trace-starting-ae
    trace-starting-c3-segment trace-starting-early-rules-sweep
    trace-starting-markup-pair trace-starting-psi
    trace-starting-sentence trace-starts-da-pattern-with
    trace-starts-da-pattern/middle-out trace-state-update
    trace-status-history trace-status-set
    trace-storing-unknown-for-later trace-stranded-copular-pp
    trace-stranded-copular/no-rule trace-stranded-copular/no-var
    trace-style trace-style/executing-fn
    trace-style/no-executable trace-subcat-pattern-failed
    trace-subcat-pattern-succeeded trace-subcat-rule
    trace-subcat-rule-setup trace-subcat-text/no
    trace-subcat-text/yes trace-subchart-operations
    trace-subj-var-couldnt-be-found trace-subject+verb
    trace-subject-not-adjacent trace-submerged-check
    trace-subtype-unit-found trace-subverting-pn-edge
    trace-successful-ns-pattern-reached
    trace-successful-uniform-ns-reached trace-sweep-core-done
    trace-sweep-for-no-space-patterns trace-sweep-for-scan-patterns
    trace-sweep-next-sentence trace-sweep-paragraph-end
    trace-sweep-reading-sentence trace-sweep-sentence-treetops
    trace-sweep-to-span-parentheses
    trace-switched-to-capitalized-variant
    trace-syntactic-combination-failed
    trace-syntactic-combination-succeeded
    trace-term-from-long-segment-edge trace-terminal-edges-sweep
    trace-terminals-loop trace-terminals-sweep
    trace-terminate-chart-process trace-terminated-early-at
    trace-terminated-sweep-at trace-terminating-section
    trace-terms trace-there-are-known-subcat-patterns
    trace-three-hyphen-default-edge trace-throwing-out-prefix
    trace-tidy-up-segment-globals trace-took-preposition
    trace-top-of-bind-open-var trace-trailing-brackets-introduced
    trace-trailing-hidden-annotation-check
    trace-trailing-hidden-markup-check trace-traversal-hits
    trace-traversal-hook trace-treetop.[-moves-boundary
    trace-treetops trace-treetops-sweep
    trace-triple-led-to-edge trace-try-category-labels
    trace-try-mult/left-category-right-form_category-id
    trace-try-parsing-leading-pp trace-try-parsing-tt
    trace-try-parsing-tt/multiple-on-right trace-try-simple-subj+verb
    trace-try-simple-vps trace-try-spanning-conjunctions
    trace-try-to-compose-instances-of-of trace-try-to-extend-loose-nps
    trace-trying-da-pattern-on
    trace-trying-for-short-extension-leftward
    trace-trying-subcat-pattern trace-trying-the-preposition
    trace-trying-to-compose trace-trying-to-conjoin
    trace-trying-to-extend-vg trace-trying-to-form-simple-pps
    trace-trying-to-make-that-rc trace-trying-to-resolve-ns-pattern
    trace-tt/action trace-tt/action/form trace-tt/caught-up
    trace-tt/checking trace-tt/continuing trace-tt/no-action
    trace-tt/resume-forest-parse trace-tt/resume-forest-parse-from-da
    trace-turning-off-conj-flag-w/o-any-action
    trace-tw-is-a-function-word trace-tw-no-unary-rule
    trace-two-conjuncts-not-consistent trace-two-hyphen-default-edge
    trace-two-hyphen-default-structure trace-two-terms-indeterminate
    trace-two-word-hyphen-edge trace-unary-realization
    trace-uniform-ns-pattern-failed trace-unindexing
    trace-unknown-word-bio-edge trace-unknown-word-defaulted-to-noun
    trace-unknown-word-is-covered trace-unknown-word-is-known
    trace-unknown-word-is-spanned trace-unknown-word-to-bio-entity
    trace-unknown-words trace-unknowns trace-unmarked-pw
    trace-unmarked-term-from-edge trace-unpacking
    trace-unpacking-ambiguous trace-unpacking-unambiguous
    trace-upstairs-subject-found
    trace-v+v-retrieved-psi-are-not-consistent-with-parent
    trace-v+v-retrieved-psi-not-consistent-with-parent
    trace-verb-composed-with-neighbor trace-verb-composed-with-np
    trace-verb-did-not-compose-with-np trace-verb-prep-pair/edge
    trace-verb-prep-pair/no-combination trace-verb-prep-pair/no-verb
    trace-verb-term-from-edge trace-vertex-ends-trie-thread
    trace-vg-mining trace-walking-up-binding
    trace-went-beyond-left-boundary trace-wfsa/actual-state
    trace-wfsa/failed/1 trace-wfsa/marked-capitalization
    trace-wfsa/no-routine trace-wfsa/no-variants
    trace-wfsa/options trace-wfsa/succeeded/1
    trace-wfsa/unknown-word trace-wfsa/variant-has-rules
    trace-wh+individual-method trace-wh-3-edges
    trace-wh-apply-question-marker trace-wh-compose-wh-with-vp
    trace-wh-flag-status trace-wh-fold-form trace-wh-how
    trace-wh-initial-edge trace-wh-make-pp-relative-clause
    trace-wh-nominal-interpretation trace-wh-nominal-processing
    trace-wh-other-np trace-wh-stranded/no
    trace-wh-stranded/no-head trace-wh-stranded/yes
    trace-wh-walk trace-wh-what trace-wh-when
    trace-wh-where trace-wh-who trace-wh-why
    trace-whack-pair-with-rule trace-whacking
    trace-whacking-triple trace-whole-seg/anticipated-form
    trace-word-colon-word-default-edge trace-word-corresponds-to-obo
    trace-word-fsa-ended-at trace-word-fsas-done-by-pnf
    trace-word-has-n-single-term-rules trace-word-initiates-polyword
    trace-word-level-actions trace-word-level-actions-except-terminals
    trace-word-level-completion-sweep trace-word-level-fsa-sweep
    trace-word-starts-patterns
    trace-[-ignored/left-boundary-already-in-place
    trace-[-ignored/suppressed-verb trace-[-sets-left-boundary
    trace-]-ignored/no-left-boundary-yet trace-]-noted
    trace-]-on-position-returned-by-pnf tracing-keyword?
    track-clause-wh-information trailing-annotation-hook
    trailing-hidden-annotation-check trailing-hidden-markup-check
    trailing-hidden-markup-on-position? transfer-edge-data-to-edge
    transfer-peg-bindings-to-individual transition-table
    transitive-vp-missing-object? translate-mumble-phrase-data
    transpose-edges-up-one traversal-action
    traverse-edges-below traverse-from-lattice-point-down-for
    traverse-sem trc-comment trc-subcs trc-superc
    tree tree-below tree-family tree-member
    tree-size treebank-smoke-test treetop-between
    treetop-does-not-end-the-chart treetop? treetops-between
    treetops-in-current-chunk treetops-in-current-segment
    treetops-in-segment treetops-in-segment/one-string
    treetops-in-sentence tri-print-args-value trie-case-list
    trie-contains-string? trie-edge-rule trie-for-1st-item
    trie-for-1st-item/pattern trie-multiply-edges trie-name
    trie-network trie-p trie-plist ddm-util:trim-whitespace
    trio-cat-reach-type trio-cats trio-verb-krisp-cat
    triple-length triple-p triple-rule
    trips-class->krisp trips-defs/->protein-defs
    trips-package-to-string trips/reach-term-/>def-bio
    trips/reach-term-/>def-indiv-with-id trivial-rule-set
    trivially-span-current-segment
    try-all-contiguous-edge-combinations try-caps-variations
    try-combination-to-the-left/bounded try-edge-fsa
    try-parsing-leading-pp try-parsing-tt
    try-parsing-tt/multiple-on-right try-reconsituting-split-tokens
    try-simple-pps try-simple-subj+verb try-simple-vps
    try-spanning-conjunctions try-these-labels-for-a-semantic-rule
    try-to-carefully-compose-two-edges try-to-compose-of-complements
    try-to-extend-pw try-to-extend-scan-pattern
    try-to-make-that-relative-clause try-to-resolve-uncovered-ns-edges
    try-to-strip-off-ed/wb try-to-strip-off-ing/wb
    try-to-strip-off-ly/wb try-to-strip-off-s/wb
    tt-edges-starting-at tt-extends?
    tt-not-part-of-last-da-pattern-to-fire tts
    tts-edge-semantics tts-form tts-ref
    tts-semantics tuck-in-just-above
    tuck-new-edge-under-already-knit tuned-grok turn-off-c3
    turn-off-debugging-flags turn-off-inessentials
    turn-off-interfering-rules turn-off-rule-set
    turn-off-rules-interfering-with-script
    turn-off-segment-analysis-settings turn-off-traces
    turn-off-traces-hook turn-on-debugging-flags
    turn-on-inessentials turn-on-traces
    turnoff-standard-extras two-edges/one-literal
    two-hyphen-ns-patterns type-expressions-in uid-is-drug?
    uid-is-family? uid-is-molecule? un-catalog/cfr
    un-catalog/polyword un-catalog/word un-embed-edge
    unambiguous-comlex-primed-decoder unary-rule?
    uncategorized-name-print-routine uncontroversial-settings
    ddm-util:underscore-interleaved-string undisplay-bracketing
    unhandled-word-in-span? unindex-binding
    unindex-individual unindex/binding unique-fries-upa-for?
    unique-hgnc-ids unique-words unit-p unit-plist
    unknown-word/s-arc-p unknown-word?
    unmarked-category-makes-permanent-individuals unpack-primed-word
    unpack-six-digit-encoding-into-date unporter
    unreport-form-check-blocks unsaturated? unstep-dm&p
    unstep-reclaimation ddm-util:until untrace-annotations
    untrace-bind-open-var untrace-binding-indexing
    untrace-brackets untrace-c3 untrace-ca-hook
    untrace-ca-search untrace-chunker untrace-completion
    untrace-completion-hook untrace-composition
    untrace-conjunction untrace-conjunction-hook untrace-da
    untrace-da-execution untrace-da-hook untrace-da-question
    untrace-delay-unknown-judgment untrace-digits-fsa
    untrace-discourse-structure untrace-dm&p untrace-earley
    untrace-early-rules untrace-edge-check
    untrace-edge-creation untrace-edge-multiplication
    untrace-edges untrace-eos-check untrace-eos-lookahead
    untrace-export untrace-extension untrace-find-word
    untrace-forest untrace-forest-edges untrace-forest-level
    untrace-forest-transitions untrace-fsas
    untrace-hidden-markup untrace-history
    untrace-incr-segments untrace-invisible-markup
    untrace-island-driving untrace-lexicon-unpacking
    untrace-lp-construction untrace-methods
    untrace-morphology untrace-multiply
    untrace-multiply-threading untrace-network
    untrace-network-flow untrace-ns-sequences
    untrace-number-words untrace-paragraphs
    untrace-parentheses untrace-parse-edges
    untrace-period-hook untrace-pnf untrace-pnf-network
    untrace-polywords untrace-prepopulation untrace-pronouns
    untrace-psi untrace-psi-construction untrace-psi/find
    untrace-questions untrace-reclaimation
    untrace-referent-creation untrace-rr untrace-rule-source
    untrace-rules untrace-rules-validity
    untrace-scan-patterns untrace-sdm&p
    untrace-section-objects untrace-section-stack
    untrace-sections untrace-segment-completion
    untrace-segmentation untrace-segments untrace-sgml
    untrace-status-history untrace-style untrace-subcat-rule
    untrace-subchart-operations untrace-terminals-loop
    untrace-terminals-sweep untrace-terms
    untrace-traversal-hits untrace-traversal-hook
    untrace-treetops untrace-treetops-sweep
    untrace-unindexing untrace-unknown-words untrace-unknowns
    untrace-vg-mining untrace-whacking unwind-from-right
    unwrap-clause-tree up-accession? up-and-over
    update-analysis-mode update-category-discourse-history
    update-conjunctive-edge-as-lambda-predicate
    update-definite-determiner update-discourse-history
    update-edge-as-lambda-predicate update-edge-mention-referent
    update-fixed-data-for-syntactic-function
    update-leftmost-edge-valid-position update-mention-dependencies
    update-mention-links update-mention-referent
    update-no-space-pattern update-ns-examples
    update-parser-state update-section-marker-edge
    update-situation-state update-state-after-binding-parameter
    update-subsumed-mention update-wh-question-as-lambda-predicate
    update-workbench uplink-indiv uplink-vv
    uplinks-of use-blank-line-nl-fsa
    use-blank-line/indentation-nl-fsa
    use-blank-line/phrase-boundaries-nl-fsa use-count-lines-nl-fsa
    use-default-settings use-export-specialist
    use-flush-lf-&-return-nl-tokens-fsa use-methods
    use-newline-fsa/paragraph use-nl-is-meaningless
    use-original-lines-of-text use-post-analysis-mentions-for-pronouns
    use-return-newline-tokens-fsa use-specialized-ng-parser?
    use-specialized-vg-parser? use-stack-sensitive-newline-fsa
    use-standard-id use-unknown-words used-in-some-rule
    uses-syntactic-function |V+V#| v-bar-compatible?
    v-of-final-vc-is-two-vowels? v/r-violation
    valid-aux-for-tense? valid-name-category?
    valid-object-complement? valid-of-context?
    valid-referent? valid-rule? validate-rule-form
    validate-rule-result-form-against-chunk value-of
    value-of-current-time value-of-indexical value-of-instr
    value-of/binding value/var value/var/v+v
    var-binding-sites var-category var-instances
    var-name var-p var-plist var-takes-category?
    var-v+v-table var-value-restriction variable+value-p
    variable-bound variable-defined-on-one-category
    variable-for-attribute variable-from-pats
    variable-given-name-and-individual variable-names
    variable-to-bind-pp-to-head variable-values
    variable/category variables-allow-specialized-printer?
    variables-in-variable-value-plist vector-contains-edge-of-category
    verb+ing-noun-compound verb-category?
    verb-form-corresponding-to-word-morph verb-forms-of
    verb-group-final-actions verb-noun-compound verb-phrases
    verb-premod-sequence? verb-premod? verb?
    verbal-form? vertex-base-p vertex-count
    vertex-leftward-extensions vertex-p vertex-plist
    vertex-reference-item vertex-rightward-extensions
    vertex-rule vertex-with-base vg+ing-vg
    vg+ing-vg+passive vg+ing-vp vg+ing-vp+ing
    vg+ing-vp+passive vg-cat vg-category?
    vg-compatible? vg-head? vg-plus-adjective
    vg-start? visit-indiv-generalizations vivify-mapping-exp
    vivify-words-observed-to-confuse-eos vowel? vp+ing-vg
    vp+ing-vg+passive vp+ing-vp vp+ing-vp+ing
    vp+ing-vp+passive vp+passive-ca-dispatch vp-ca-dispatch
    vp-category? vt vv-category vv-plist
    vv-psi vv-value vv-variable w/accl/daughters
    walk-alist/delete walk-and-print-trie
    walk-down-right-headline walk-down-target-sequence
    walk-model walk-path-over-this-argument walk-pw-states
    walk-section-daughters/locate-position
    walk-section-objects-daughters-print-indented
    walk-section-siblings/locate-position
    walk-through-referent-actions walk-up-bound-in-to-indiv
    walk/accumulate-category-lattice warn-about-verbified-nouns
    warn-or-error warp-announcement-widgets-off-screen
    wf-classification/ignore-caps wf-classification/ignore-caps/known
    wh-copula-stranded-prep wh-determiner? wh-edge?
    wh-four-edges wh-four-edges/vp
    wh-initial-followed-by-modal wh-initial-four-edges
    wh-initial-four-edges/adjunct wh-initial-four-edges/be
    wh-initial-four-edges/vp+ed wh-initial-three-edges
    wh-initial-two-edges wh-is-declarative-heuristics
    wh-stranded-prep wh-subcat-stranded-prep wh-three-edges
    wh-vp wh-vp-as-relative-clause wh-vp-edge
    wh-with-reduced-relative whack-a-rule whack-a-rule-cycle
    what-to-do-at-the-forest-level what-to-do-with-unknown-words
    when-binding-hook when-relative-clause-comma
    where-prefix-edge-ends where-relative-clause-comma
    where-tt-ends whitespace who-binds
    who-subject-relative-clause-operation will-trigger-abbreviation?
    with-agent with-all-instances-permanent/expr
    with-bindings with-complement with-goal
    ddm-util:with-indentation with-inessentials-turned-off
    with-name-and-superc with-patient with-readtable-bound
    with-referent-edges with-subject with-theme
    with-total-quiet with-word-brackets with-xml-header
    with-xml-indentation without-comparatives
    without-redefinition-warnings wn-backlink wn-index
    wn-senses wn-string
    word-actions-dispatch/check-for-capitalized word-after
    word-after-lc-word-is-capitalized? word-and-name-diff-pos?
    word-arc-p word-at-this-position-is-capitalized?
    word-at-this-position-is-lowercase? word-before
    word-before-pos word-brackets word-capitalization
    word-capitalization-variants word-consists-of-only-capital-letters
    word-consists-of-only-digits
    word-consists-of-upper-and-lower-case-letters
    word-definitively-ends-segment word-definitively-starts-nps
    word-ends-in-d word-ends-in-e word-for-scanned-chars
    word-frequency-corpus-distribution-by-fractions
    word-frequency-corpus-distribution-by-fractions1
    word-frequency-export-form word-frequency-profile
    word-frequency-setting word-frequency-setting-caps
    word-from-edge word-fsas-done-by-pnf
    word-has-associated-category word-has-capitalized-first-letter
    word-has-uid-p word-is-a-noun word-is-a-preposition?
    word-is-a-proper-noun word-is-an-adverb
    word-is-an-article word-is-bracket-punct
    word-is-np-modifier word-is-plural-name?
    word-just-to-the-left word-level-actions
    word-level-actions-except-terminals word-level-completion-sweep
    word-level-fsa-sweep word-mentioned-in-rules?
    word-morphology word-named word-never-in-ns-sequence
    word-or-variant-has-fsas? word-p word-parameters
    word-plist word-pname word-rule-set word-rules
    word-starts-with-lowercase-letter? word-stem word-string
    word-symbol word-table-to-list word-to-left-of-head
    word-total-token-count word-traversal-hook
    word-under-edge word-with-single-edge-rules? words
    words-between words-in-segment
    words-in-segment-after-prefix words-in-string
    words-to-count words-to-list |WORDS-WITH-FREQUENCY#|
    words-with-rule-sets words-without-rule-sets
    workout-the-relationships-among-the-categories wrap-in-resource
    wrap-latent-predicates write-as-org-tree write-attribute
    write-bracket-citation-from-last-run write-cat-org
    write-characters-between-positions write-chunking-results-to-file
    write-citation-from-last-run write-cite/label-dispatch
    write-combined-sentence-results write-complex-table-entries
    write-current-token-to-article-stream
    write-def-forms-for-all-words write-discourse-to-file
    write-icp write-kraql-cache write-lambda-binding
    write-missing-subcats write-org-tree-cat-line
    write-out-word-frequency-corpus-distributions write-protein-xml
    write-realization-data write-sem write-sem-dependency
    write-sem-tree write-semantics write-sentence-results
    write-specific-word-to-article-stream write-swept-sentence-to-file
    ddm-util:write-time-readably write-to-text-window write-token
    write-treetop-semantic-snapshot write-treetop-snapshot
    write-words write-words-by-pos
    writeout-dereferenced-mapping-for-revival wrs x-timings
    yellow-string yesterday yoshi
    zero-bound-in-fields zero-category-index
    zero-individuals-bindings zero-lookup-buffer
    zero-out-individual zero-the-digits-array
    [-on-position-because-of-word? ]-on-position-because-of-word?))

#+sbcl
(defparameter *clic-fns*
  'clic::(* + - / /= 1+ 1- < <= = /> >= abandon-goal abort abs acons acos acosh
   action-clic-disable-pragmatic-interps action-clic-enable-pragmatic-interps
   action-clic-initiate-reset action-clic-log action-clic-nudge action-clic-say add-action-episode
   add-child-goal add-dbug add-disallowed-kb-package add-discourse-episode add-entity-predication
   add-episode add-expected-episode add-find-if-necessary add-goal add-issue-episode
   add-justification add-method add-nary-predicate add-optionals add-predicated-entity add-report
   add-special-roles add-special-sp-roles add-state-episode add-sub-category add-sub-context
   add-sub-predicate add-subgoals-for-graphs add-to-msg-log add-type-for-episode adjoin
   adjust-array adjustable-array-p agent-reply-type aggregate-expr->elts all-action-episodes
   all-answer-episodes all-capability-names all-digits-after all-discourse-episodes
   all-drum-short-names all-forms all-forms-from-sources all-interps all-sources all-state-episodes
   all-tfta-capabilities all-vars-bound-in-term allocate-instance alpha-char-p alphanumericp
   ancestors and and-form answer append apply apply-blist apply-name-map apply-query-corefs apropos
   apropos-list are-there-any->find aref arithmetic-error-operands arithmetic-error-operation
   array-dimension array-dimensions array-displacement array-element-type array-has-fill-pointer-p
   array-in-bounds-p array-rank array-row-major-index array-total-size arrayp ash asin asinh ask
   assert assert-dl-matches assoc assoc-if assoc-if-not assq assume atan atanh atom
   ba-break-on-error bad-match-sents bagify-set base-context best-ancestors best-current-interp
   best-drum-name best-interp-for best-interps best-interps-for best-lf-drum-name bio-item-name
   bio-item-names bio-object? bit bit-and bit-andc1 bit-andc2 bit-eqv bit-ior bit-nand bit-nor
   bit-not bit-orc1 bit-orc2 bit-vector-p bit-xor block blurt-facts boole both-case-p
   both-sides-alpha boundp break broadcast-stream-streams butlast bw-log-handler byte byte-position
   byte-size caaaar caaadr caaar caadar caaddr caadr caar cadaar cadadr cadar caddar cadddr caddr
   cadr call-method cap-cats cap-form cap-forms cap-sents capability-agent-optional-arg
   capability-agent-var-producers capability-groups->nec-opt-classes
   capability-groups->nec-opt-filtering capability-type-constraints car car-eq case cat-from-bag
   cat-in-type? catch ccase cdaaar cdaadr cdaar cdadar cdaddr cdadr cdar cddaar cddadr cddar cdddar
   cddddr cdddr cddr cdr ceiling cell-error-name censor-in-context cerror change-class change-isa
   change-vars char char-code char-downcase char-equal char-greaterp char-int char-lessp char-name
   char-not-equal char-not-greaterp char-not-lessp char-upcase char/= char< char<= char= char>
   char>= character characterp check-partial-matches check-type cis clarified-agent-request
   class-name class-name? class-of clause-from-var clause-with? clear-input clear-output
   clic-clause-rewrites close clrhash code-char coerce collect collect-context-terms-for
   collect-more-than-two collect-related-terms collect-term-slots collect-uvar-constraints
   combine-answers command? commit-goal comp-ba-new compare-canary-lfs compare-interp-to-capability
   compare-old-ecify-to-new compile compile-file compile-file-pathname compiled-function-p
   compiler-macro-function complement complex complexp compose-reply-to-user compress-cat-patterns
   compute-applicable-methods compute-dl-matches compute-restarts concatenate
   concatenated-stream-streams cond conjugate conjuncts cons consp constantly constantp
   contains-critical-item? context->facts context->file context-empty-p context-exists-p
   context-retrieval continue contract-graph-by-ids copy-alist copy-list copy-pprint-dispatch
   copy-readtable copy-roles copy-seq copy-structure copy-symbol copy-tree cos cosh count count-bag
   count-if count-if-not cpt create-capability-groups critical-item? ctxt-parents ctypecase
   current-form d date-&-time-as-formatted-string date-as-formatted-string date-time-now dbug
   deal-with-hyphens debug-off debug-on debug-switches-on decf declaim decode-float
   decode-request-var decode-universal-time decompose-goal deep-match deep-match-is-exactly?
   deep-match-isa? deep-match-not-is-exactly? deep-match1 def-ecify defclass defconstant defgeneric
   define-compiler-macro define-condition define-exec-op define-method-combination
   define-modify-macro define-setf-expander define-store-op define-symbol-macro define-test-op
   defmacro defmethod defpackage defparameter defsetf defstruct deftype defun defvar delete
   delete-all delete-duplicates delete-file delete-if delete-if-not delete-package denominator
   deposit-field describe describe-bw-entity describe-eci describe-expr describe-object
   describe-pbs-path destructure-lf destructure-ref-fn destructuring-bind diff-test-equal-mod-list
   digit-char digit-char-p directory directory-namestring disassemble discriminating-cat?
   display-executive display-facts display-interp display-interp-process display-last-lf
   display-multi-triple-graph display-pcg display-subgraph distribute distribute-all dnf do do*
   do-all-symbols do-external-symbols do-final-rewrites do-final-sparser-rewrites
   do-protect-with-kb do-query-results do-sform-unify do-sform-unify-interp do-symbols
   documentation dolist dont-show-cap-match dotimes downward-prop dpb dribble drop-last-chars ecase
   echo-stream-input-stream echo-stream-output-stream eci-compose eci-form->query eci-path
   ecify-agent-query-reply ecify-boolean ecify-results ed edit-distance eighth elapsed-time else
   elt encode-state-episode encode-universal-time endp enough-namestring ensure-directories-exist
   ensure-generic-function ensure-log-dir ensure-packages ensure-sentence entity-name
   entity-var-from episode->trigger episode-has-type episode-types eq eql equal equal-norm-evals?
   equalp error etypecase eval eval-when evaluate-content evaluate-context evaluate-goal
   evaluate-msg-context evaluate-msg-id evaluate-msg-sexp evaluate-world-against-plan evenp every
   execute-interp-match exp expand expand-attribute-of expand-context-to-part-of
   expand-endpoints-as-between expand-in-pathway-role expand-inhibitors expand-modulate-expression
   expand-mutation-frequency expand-regulator expand-sub-pattern expand-sub-patterns
   expand-transcription-factors explain-state-transition export expt extend-clause fboundp fceiling
   fdefinition ffloor fifth file->kb file-author file-error-pathname file-length file-namestring
   file-position file-string-length file-write-date fill fill-canary-ht fill-pointer
   fill-world-context filter find find-all-res find-all-symbols
   find-all-wh-predicate-forms-in-capabilities find-class find-clause-by-match find-clause-with-var
   find-diff find-forms find-goal-family find-grounding-for-those find-id-term find-if find-if-not
   find-interp find-interp-match find-it-referring-term find-kqml-arg find-kqml-arg-in-act
   find-method find-methods find-package find-prior-referent find-qvars find-qvars-in-form find-res
   find-res-clauses-with find-restart find-specific-terms find-symbol find-term find-term-in-role
   find-term-with-role-in-evaluate-context find-unify find-wh-clause find-wh-predicates
   finish-output first flatten-class-list flet float float-digits float-precision float-radix
   float-sign floatp floor fmakunbound fold-interp force-output forget form-keys form-var-types
   format format-answer-list format-bio-target-list format-report-answer formatter forward-chain
   fourth fresh-line fround ftruncate funcall function function-keywords function-lambda-expression
   functionp g-facts gather-compact-answer gcd gen-new-var gen-report-answer generalize-mapping
   generate-bio-answer gensym gentemp get get-agent-arg-producers get-agent-args
   get-agent-var-producer get-all-arg-and-output-roles get-all-capability-form-types get-ask-agents
   get-capability get-capability-form-types get-caps get-cat-patterns-and-vars get-category
   get-decoded-time get-dispatch-macro-character get-eci get-ekb-vars get-eval-diffs
   get-eval-diffs-from-utt get-event-term get-form-args get-form-category get-graph-filename
   get-int-ext get-internal-real-time get-internal-run-time get-interp get-item-to-move
   get-list-of-lists-intersection get-log-pathname get-macro-character get-mismatches
   get-output-stream-string get-prior-envisionments get-properties get-raw-classes get-res-cap
   get-role-of-ref-in-terms get-setf-expansion get-sp-form-category get-spg-results get-sub-interp
   get-term-var-types get-top-var get-trips get-universal-time get-var-form-constraints getf
   gethash go goal->context goal->issues goal->structure-context goal->structure-graph
   goal-considered-p goal-detail-context goal-executed-p goal-exists-p goal-facts goal-failed-p
   goal-interp-context goal-interp-facts goal-obe-p goal-report-texts goal-reports
   goal-struct-facts goal-succeeded-p goals->issues graph->coherent-subgraphs graph->id
   graph->named-subgraph graphic-char-p ground-appropriate-subgraphs ground-interp
   ground-named-subgraph ground-question-answer ground-subgraph ground-those-interps groundings
   group-by group-capabilities-by-method-arg-types group-result grouped-cap-types hal
   handle-clarification-question-answer handler-bind handler-case has-values hash-key-vals
   hash-logical-forms hash-sp-forms hash-table-count hash-table-p hash-table-rehash-size
   hash-table-rehash-threshold hash-table-size hash-table-test head-form hgnc-name-from-uniprot
   host-namestring hyphenated-words ici-classes ici-clauses ici-tree-classes-from-node
   id->structured-formulas id-eq id-forms id-lform id-lform identity ids->names if ignore-errors
   imagpart implicit-classes import in-package incf incf-numerator-denominator init-clic-bio
   init-clic-blocksworld init-clic-web-bio init-common init-dl-matching initialize-ecipedia-ecis
   initialize-instance input-stream-p insert-wh-spec-or-go inspect integer-decode-float
   integer-length integerp interactive-stream-p intern intern-upcase internal-id
   internal-start-time interp->coherent-subgraphs interp->graph interp->handle interp->id
   interp->ref interp-form->id interp-kqml interp-node interpret-and-ground-kqml
   interpret-icis-from-context interpret-icis-from-kqml interpret-kqml
   interpretation->grounded-refs interpretation-actionable-p interpretation-matches-capabilities
   interps interps-for intersection invalid-method-error invoke-debugger invoke-restart
   invoke-restart-interactively is-anaphoric? is-general-go-term? is-id-for-tf is-in-p is-subcat
   is-word isa-or-set-of-type isa? isqrt issue-for-clarification it-they-term-p json-@id
   json-http-response json-sexpr-value json-value jsonify-obj-expr kb->file kb-item-name kb-var-p
   kbify kbify kbsym keywordp kprop kqml-prop krisp->eci-category krisp-lf->eci
   krisp-role->eci-role krunch-data-log-filename krunch-generate-text labels lambda last
   last-answer-episode last-answer-facts last-answer-types last-chars last-ditch-predications
   last-episode last-episode-compact-answer last-episode-compact-answer-types last-evaluate-msg
   last-interp last-user-utterance-ctxt lc lcm ldb ldb-test ldiff length let let*
   lf->ici-clauses->tree-classes lf-children lf-depth lf-id lf-parents lf-props lf-tree
   lf-tree-from-node lf-value lf-values lfs-examples lfs-icis libname->contexts
   lisp-implementation-type lisp-implementation-version list list list* list-all-packages
   list-length listen listp load load-eci-file load-kb-file load-logical-pathname-translations
   load-res-hash load-tf-caps load-time-value load-trips-ontology locally locate-system-file log
   log-ba-msgs log-msg-write-krunch-data logand logandc1 logandc2 logbitp logcount logeqv
   logical-pathname logical-pathname-translations logior lognand lognor lognot logorc1 logorc2
   logtest logxor long-site-name loop loop-finish lower-case-p machine-instance machine-type
   machine-version macro-function macroexpand macroexpand-1 macrolet make-agent-clarification-issue
   make-answer-utterance make-arg-specific make-array make-broadcast-stream make-canary-clic-path
   make-canary-lfs-symbol make-concatenated-stream make-condition make-content-clause
   make-context-clauses make-def-ecify make-def-ecify-body make-dispatch-macro-character
   make-echo-stream make-failure-utterance make-goal-for-interpretation make-goal-for-ref
   make-graphs make-hash-table make-instance make-instances-obsolete make-interp-test-ctxt
   make-kb-id make-list make-load-form make-load-form-saving-slots make-log-entry make-new-context
   make-new-interpretation make-new-kb-symbol make-package make-pathname make-property-query
   make-random-state make-read-file-episode make-ref-fn make-ref-term-id make-reporting-goal
   make-satisfies-query make-sequence make-shadow-goals-for-refs make-string
   make-string-input-stream make-string-output-stream make-sub-context make-symbol
   make-synonym-stream make-two-way-stream make>var makepatvar makunbound map map-episodes-of-type
   map-goal-dag map-into map-role-relations map-striped-sexpr map-target-disease-to-assoc mapc
   mapcan mapcar mapcon maphash mapl maplist mark-issue-addressed mark-specific-wh-or-go-if-true
   mask-field match-and-constraints match-cap match-cap-cats-sent-cats match-cap-val match-cats
   match-constraint match-constraint-list match-or-constraints match-ratings
   match-sentence-cap-cats match-specific-constraint match-wh-constraint matched-rule?
   matching-sent-cat max maybe-grounded-trips-term member member-if member-if-not memq
   mentioned-terms merge merge-pathnames method-combination-error method-qualifiers min minusp
   mismatch mismatched-cap-cat-sents missing-critical-items? mixed-case-p mod move-items-to-roles
   move-theme-predication-to-condition msg-log-filename msg-response muffle-warning
   multiple-value-bind multiple-value-call multiple-value-list multiple-value-prog1
   multiple-value-setq mumble-blocks-context name name-char namestring nbutlast nconc
   needs-grounding-p new-interp new-issue-episode nintersection ninth no-applicable-method
   no-next-method node-depths non-goal-description norm-score normalize-capability-types
   normalize-interp-form not notany notevery np nreconc nreverse nset-difference nset-exclusive-or
   nstring-capitalize nstring-downcase nstring-upcase nsublis nsubst nsubst-if nsubst-if-not
   nsubstitute nsubstitute-if nsubstitute-if-not nth nth-value nthcdr nudge null numberp numerator
   nunion obj-expr->all-prop-values oddp only-interps ont-var-p open open-stream-p or
   order-lfs-by-depth organize-wh-predicates other? output-item? output-stream-p pack*
   package-error-package package-name package-nicknames package-shadowing-symbols package-use-list
   package-used-by-list packagep pairlis parents parse-integer parse-namestring partial-match
   pathname pathname-device pathname-directory pathname-host pathname-match-p pathname-name
   pathname-type pathname-version pathnamep peek-char phase plural-ref? plusp pop pop-list-fn
   position position-if position-if-not post-action post-json-to-url post-load post-provenance
   post-reset post-utterance pprint pprint-dispatch pprint-evaluate pprint-exit-if-list-exhausted
   pprint-fill pprint-indent pprint-kqml-hiding-vars pprint-linear pprint-logical-block
   pprint-newline pprint-pop pprint-tab pprint-tabular previous-evaluate-msgs
   previous-user-utterance-ctxts prin1 prin1-to-string princ princ-to-string print
   print-not-readable-object print-object print-unreadable-object prior-episodes-answer-types
   probe-file process-concept-form proclaim prog prog* prog1 prog2 progn progv pronominalp propify
   provide psetf psetq publish-and-post-interpretation publish-directory publish-file
   publish-json-action push pushnew q q-prop q-prop q-prop-of q-prop-of qbb qbb qbb-fails-at
   qbb-fails-at qg qg-fails-at qi qi-fails-at query query-agent-name query-type quote
   quote-every-other-one random random-state-p rank rassoc rassoc-if rassoc-if-not rational
   rationalize rationalp raw-icis rclause-vars re-interp re-interpret re-interpret-guts read
   read-byte read-char read-char-no-hang read-csv-string read-delimited-list read-from-string
   read-line read-preserving-whitespace read-sequence read-user-gene-list readtable-case readtablep
   really-named-item? realp realpart received-user-file recompress-class-list redo-it-term reduce
   referring-expression-p register-ask-question-handler register-get-ekb-xml-handler
   register-get-indra-handler register-initiate-reset-handler register-log-handler
   register-propose-goal-handler register-report-status-handler register-spoken-handler
   register-take-action-handler register-utterance-handler register-world-changed-handler
   reinitialize-instance relation? reload-interp-support-rules reload-kbfile rem rem-strings
   remainder-mismatch? remf remhash remove remove-bare-preps remove-bare-quantifier-clauses
   remove-can-you remove-conditional-find-know remove-conditional-yn-question
   remove-confirm-copular-predication remove-confirm-same-as remove-copular-predication remove-dbug
   remove-drum remove-duplicates remove-extraneous-be-clause remove-extraneous-sp-classes
   remove-from-context remove-hidden-vars remove-hyphens remove-i-want remove-if remove-if-not
   remove-items remove-items-from remove-keywords remove-max-val-comparative remove-method
   remove-nec-classes remove-nulls remove-please remove-properties remove-property
   remove-punc-minus remove-sub-context remove-term-slots remove-vars remove-vars-and-simplify
   remove-wh-are-part-of remove-what-are-adj remove-what-are-same-as remprop rename-file
   rename-package repackage-expr replace replace-all replace-interp replace-property
   replace-slot-value require res-clause-matches reset-clic reset-entity-cache
   reset-episodic-memory reset-evaluate-msgs reset-interp-rules reset-interpreter reset-kb
   reset-log reset-logs resolve-report-elts rest restart-bind restart-case restart-name
   restart-web-server results-pathname return return-from revappend reverse
   rewrite-cause-development rewrite-copular-pp-as-same-as rewrite-pathway-location-as-mod
   role-value-isa room rotatef round row-major-aref rplaca rplacd rtree-vars rule-based-enrichment
   rule-based-transfer rule-name run-exec run-exec-op run-executive run-next-simplification-rule
   running-spg? safe-assoc safe-prop same-keys sans sassoc save-sentence-interp-rules say
   say-exec-failure say-this-msg sbit scale-float schar score search search-recent-state-history
   second select sent-cat-weight sent-clauses set set set-difference set-dispatch-macro-character
   set-exclusive-or set-find-or-make-setup-package set-macro-character set-pprint-dispatch
   set-results-pathname set-syntax-from-char set-up-canary-ht setf setq setup-capability-groups
   setup-capability-patterns setup-find-or-make setup-res-classes setup-res-classes-from-trees
   setup-subgraph-query seventh sexpr->value sexpr-has-value sexpr-negated-p sget-prop shadow
   shadowing-import shared-goal-p shared-initialize shiftf short-site-name short-test-log-filename
   show-capability-match show-capability-match show-capability-match-if-traced
   show-capability-match-if-traced show-gdiffs show-interp show-interp-caps show-run-times
   show-simplified-eval-if-needed show-simps show-time-dif signal signum simple-bit-vector-p
   simple-clause-match simple-condition-format-arguments simple-condition-format-control
   simple-string-p simple-vector-p simplify-agent-value simplify-gene-assoc-with-protein
   simplify-interps-by-rule simplify-sp-agent-value simplify-temporal-changes-of-quantity sin sinh
   sixth sleep slot-boundp slot-exists-p slot-makunbound slot-missing slot-unbound slot-value
   software-type software-version some sort sort-context-terms sort-mappings
   sort-mappings-normalized sort-mentioned-terms sorted-examples source sp->trips-statement
   sp->try-pragmatic-interp sp-ici sp-ici-classes sp-ici-clauses sp-ici-not-clauses
   sp-role-value-isa sp-run-traces sparser-clauses->ici-like spawn-sibling-goal special-operator-p
   specific-term-p sqrt stable-sort standard-char-p start-clic-webserver start-web-server step
   stop-web-server store store store-all store-fake-ekb-for store-kqml-in-kb store-replace
   store-value stream-element-type stream-error-stream stream-external-format streamp string
   string-append string-capitalize string-downcase string-equal string-greaterp string-left-trim
   string-lessp string-matches-name string-not-equal string-not-greaterp string-not-lessp
   string-right-trim string-trim string-upcase string/= string< string<= string= string> string>=
   stringify stringp strip-ungroundable-properties structmap-contexts structured-expr-p
   structured-expr-p structured-formulas sub-bag-p subcategories subcategory-p sublis subseq
   subsetp subst subst-if subst-if-not substitute substitute-if substitute-if-not subsumed-by
   subsumes subtypep supercategories supercategory-p svref sxhash sym-or-word-equal
   sym-or-word-member symbol->trips-term symbol-function symbol-macrolet symbol-name symbol-package
   symbol-plist symbol-value symbolp synonym-stream-symbol sys-found-list
   sys-found-list-of-kwd-lists tagbody tailp tan tanh target-context tenth term-has-id terpri
   test-all-bioagent-capability-sentences test-and-constraints test-interp test-interpreter
   test-tra-sentences test-var-constraints the the-facts the-facts the-rules the-rules then third
   throw time time-as-formatted-string time-form time-now timestring toggle-negation
   top-level-predication tra-molecular-qty trace trace-capability trace-method trace-methods
   trace-res-cap trace-simplification-rules transcription-factor-aliasp transcription-factor-name-p
   translate-logical-pathname translate-pathname tree-equal tree-find-ont-vars tree-find-symbol
   tree-size tree-vars trips->eci-category trips-interp-clauses trips-lf->eci trips-role->eci-role
   truename truep truncate two-way-stream-input-stream two-way-stream-output-stream
   type-error-datum type-error-expected-type type-form-has-member type-of typecase typep
   unbound-slot-instance unbound-var-p uncensor-in-context unexport unintern union union-all unless
   unmatched-cap-cat-sents unread-char unstore unstore unstore-all untrace untrace-capability
   untrace-simplification-rules unuse-package unwind-protect update-goal-status
   update-instance-for-different-class update-instance-for-redefined-class
   upgraded-array-element-type upgraded-complex-part-type upper-case-p use-package use-value
   useful-class user-clarification-question-answer user-homedir-pathname values values-list
   var-binding var-p var-p var-value vector vector-pop vector-push vector-push-extend vectorp
   vn-dir vn-eci-file vn-file warn weak-pred? wh-base? wh-constraint? what-determiner?
   what-next-goal what-which-determiner? what-which? when wild-pathname-p with-accessors
   with-compilation-unit with-condition-restarts with-hash-table-iterator with-ids
   with-input-from-string with-kb-lock with-msg-log-stream with-new-context with-open-file
   with-open-stream with-output-to-string with-package-iterator with-query-result
   with-simple-restart with-slots with-standard-io-syntax with-temp-context with-timer write
   write-byte write-char write-line write-sequence write-string write-to-string xbl-val y-or-n-p
   yes-or-no-p zerop))

#+:sbcl
(defun timings(&optional (n 1))
  (setq *cl-fns* (all-package-fns :cl-user))
  (setq *profns* (loop for f in *sp-fns* unless (member f *cl-fns*) collect f))
  (eval `(sb-profile::profile ,@*profns*))
  (setq *allow-tr-tracing* nil)
  (loop for i from 1 to n do
    (compare-to-snapshots))
  (sb-profile:report))
#+:sbcl
(defun x-timings(x &optional (n 1))
  (setq *cl-fns* (all-package-fns :cl-user))
  (setq *profns* (loop for f in *sp-fns* unless (member f *cl-fns*) collect f))
  (loop for f in (all-clic-functions)
        unless (or (member f *cl-fns*) (member f *profns*))
        do (push f *profns*))
  (loop for f in (all-spire-functions)
        unless (or (member f *cl-fns*) (member f *profns*))
        do (push f *profns*))
  (eval `(sb-profile::profile ,@*profns*))
  (setq *allow-tr-tracing* nil)
  (eval x)
  (sb-profile:report))

(defparameter *nht* (make-hash-table :test #'eql))
(defparameter *vht* (make-hash-table :test #'eq))
(defparameter *lht* (make-hash-table :test #'equal))
(defparameter *val* nil)
(defparameter *name-variables* (find-variable 'name))

#+ignore
(defun make-dummy-v+v()
  (let* ((v+v (allocate-v+v))
         (v (cdr (nth (unit-plist v+v) *name-variables*)))
         (value (car (nth (unit-plist v+v) *name-variables*))))
    (setf (vv-variable v+v) v)
    (setf (vv-value v+v) value)
    (setf (var-v+v-table v)
          (push `(,value . ,v+v) 
                (var-v+v-table v)))
    (tr :made-v+v v+v)
    v+v))

;;(defparameter *vvs* (loop for i from 1 to 20 collect (make-dummy-v+v)))
#|
(setq vk (fifth *vvs*))
(setq nk (unit-plist vk))
(setq lk (list (vv-variable vk)(vv-value vk)))
|#

#+ignore
(defun load-vv-tables ()
  (loop for vv in *vvs* do
    (setf (gethash (unit-plist vv) *nht*) vv)
    (setf (gethash vv *vht*) (unit-plist vv))
    (setf (gethash (cons (vv-value vv)(vv-variable vv)) *lht*) vv)
    (setf (getf *val* vv) (unit-plist vv))))

(defparameter *rr* nil)

(defun ht (n key ht)
  (loop for i from 1 to n do (setq *rr* (gethash key ht))))

(defun htnull (n key ht)
  (declare (ignore key ht))
  (loop for i from 1 to n do (setq *rr* (cons n n))))

(defun vt (n key)
  (loop for i from 1 to n do (setq *rr* (getf *val* key))))

#|? 
time (ht 10000 nk *nht*))
;Compiler warnings :
;   In an anonymous lambda form at position 16: Undeclared free variable NK
(HT 10000 NK *NHT*)
took   630 microseconds (0.000630 seconds) to run.
During that period, and with 8 available CPU cores,
     1,301 microseconds (0.001301 seconds) were spent in user mode
         9 microseconds (0.000009 seconds) were spent in system mode
NIL
? (time (ht 10000 lk *lht*))
;Compiler warnings :
;   In an anonymous lambda form at position 16: Undeclared free variable LK
(HT 10000 LK *LHT*)
took 3,371 microseconds (0.003371 seconds) to run.
During that period, and with 8 available CPU cores,
     7,330 microseconds (0.007330 seconds) were spent in user mode
        47 microseconds (0.000047 seconds) were spent in system mode
 752 bytes of memory allocated.
NIL
? (time (vt 10000 vk))
;Compiler warnings :
;   In an anonymous lambda form at position 16: Undeclared free variable VK
(VT 10000 VK)
took   913 microseconds (0.000913 seconds) to run.
During that period, and with 8 available CPU cores,
     1,897 microseconds (0.001897 seconds) were spent in user mode
        21 microseconds (0.000021 seconds) were spent in system mode
NIL


|#



(defun parse-sentence-carefully (sent-string)
  (let ((*trap-error-skip-sentence* t))
    (declare (special *trap-error-skip-sentence*))
    (let* ((length (length sent-string)))
      (unless (eql #\. (char sent-string (1- length)))
        (setq sent-string (string-append sent-string ".")))
      (establish-character-source/string sent-string)
      (if *trap-error-skip-sentence*
          (handler-case
              (analysis-core)
            (error (e)
                   (ignore-errors ;; got an error with something printing once
                    (format t "~&parse-sentence-carefully -- Error in ~s~%~a~%~%" (current-string) e))))
          (analysis-core)))))

(defun ras2-sentence (s)
  (with-total-quiet
      (when
          (parse-sentence-carefully s)
        (loop for i in (second (car *all-sentences*))
          thereis (and (individual-p i)(itypep i 'protein)(value-of 'ras2-model i))))))

(defun all-bind-prots (i)
  (loop for bb in (indiv-binds i)
    when (and
          (memq (var-name (binding-variable bb)) '(bindee direct-bindee binder))
          (value-of 'name (binding-value bb)))
    collect (binding-value bb)))

(defun all-prots (a)
  (loop for i in (second a) when (and (individual-p i)
                                      (or (itypep i 'protein)(itypep i 'protein-family))
                                      (value-of 'name i))
    collect i))

(defun bind-and-prots ()
  (loop for a in *all-sentences* 
    append
    (loop for i in (second a)
      when (and (individual-p i)(itypep i 'binding))
      collect (list i (all-bind-prots i)(all-prots a) (car a)))))

(defun bind-and-bio-entity ()
  (declare (special category::bio-entity))
  (loop for a in *all-sentences* 
    append
    (loop for i in (second a)
      when (and (individual-p i)
                (itypep i 'binding)
                (loop for ii in (all-bind-prots i) thereis (eq (itype-of ii) category::bio-entity)))
      collect (list i (all-bind-prots i)(all-prots a) (car a)))))

(defun all-bio-entities ()
  (declare (special category::bio-entity))
  (loop for a in *all-sentences* 
    append
    (loop for i in (second a)
      when (and (individual-p i)(eq (itype-of i) category::bio-entity))
      collect i)))
  
(defun test-bind-sents ()
  (declare (special bind-sents))
  (load-pmc-sent-lists)
  (loop for i from 1 to 3000 as s in bind-sents do (eval `(with-total-quiet (epp ,s)))))

(defun ras2-proteins-in-sentences (&optional (with-sentence? t))
  (loop for a in *all-sentences*
    append
    (loop for i in (second a)
      when (and (individual-p i)(itypep i 'protein) (in-ras2-model? i))
      collect
      (if
       with-sentence?
       (list i (car a))
       i))))

(defun show-sentences ()
  (np (reverse (mapcar #'first *all-sentences*))))

(defun r2-proteins-in (n)
  (run-june-articles 1 :from-article (- n 1))
  (let
      ((r2p (ras2-proteins-in-sentences)))
    (if r2p
        (np r2p)
        (show-sentences))))

(defvar *comments*) ;; for some reason the   (declare (special *comments*)) doesn't do the job
(defun test-comments (&optional (end (length *comments*)))
  (declare (special *comments*))
  (loop for i from 1 to end
     do
       (format t "~%~%__________^^^^^^^^__________~%Processing comment# ~s~%~%" i)
       (test-sent 'comments i :multi-sent t :no-syn-tree t)))
  

(defparameter *nt-cfrs* nil)
(defparameter *rhs1-ht* (make-hash-table :size 1000))
(defparameter *rhs2-ht* (make-hash-table :size 1000))

(defun index-semantic-rules ()
  (setq *nt-cfrs*
        (loop for r in *cfrs-defined*
           when (and (cdr (cfr-rhs r)) (category-p (car (cfr-rhs r))))
           collect r))
  (clrhash *rhs1-ht*)
  (clrhash *rhs2-ht*)
  (loop for r in *nt-cfrs* do 
       (push (cons r (mapcar #'cat-name (cfr-rhs r)))
             (gethash (cat-name (car (cfr-rhs r))) *rhs1-ht*)))
  (loop for r in *nt-cfrs* do 
       (push (cons r (mapcar #'cat-name (cfr-rhs r)))
             (gethash (cat-name (second (cfr-rhs r))) *rhs2-ht*))))

(defun find-semantic-rules-starting-with (cat-name)
  (gethash cat-name *rhs1-ht*))

(defun find-semantic-rules-ending-with (cat-name)
  (gethash cat-name *rhs2-ht*))


(defun spire-roundtrip-corpus (corpus)
  (loop for p in
       (eval (corpus-bound-variable (get-sentence-corpus corpus)))
     do (print (second p))
       (funcall (intern "ROUNDTRIP-TEST" (find-package :spire))
                (second p))))


(defparameter *er-signals*
  '(SUBORDINATED-EVENT
    SUBORDINATE-CONJUNCTION;; -- we are missing the connection if all we can see is this
    FOLLOWING
    PRECEDING
    LEADS-TO
    NECESSARY-TO
    NEEDED-FOR
    RESULTS-IN
    RESULTING
    USED-TO
    DURING
    RESULT-OR-PURPOSE
    CAUSING
    RESULT
    ALLOW
    PURPOSE
    BY-MEANS-OF
    AFFECTED-PROCESS
    ;;to comp under BIO-ACT
    EVENT-RELATION
    ;;CAUSE-OF -- replaced by EVENT-RELATION
    ))

(defun contains-some-of (tree list)
  (when tree
    (let ((tail (contains-some-of (cdr tree) list)))
      (cond
        ((consp (car tree))
         (remove-duplicates (append (contains-some-of (car tree) list) tail)))
        ((member (car tree) list)
         (pushnew (car tree) tail))
        (t tail)))))


(defun event-relations (text)
  (with-total-quiet
    (pp text))
  (handler-case
      (loop for tt in (all-tts)
         append
           (let* ((ref
                   (when (and
                          (sp::edge-p tt)
                          (sp::individual-p (sp::edge-referent tt)))
                     (if (sp::itypep (sp::edge-referent tt) 'prepositional-phrase)
                         (edge-referent (edge-right-daughter tt))
                         (sp::edge-referent tt))))
                  (tree (when ref (spire-tree ref)))
                  (rels (when ref (contains-some-of tree *er-signals*))))
             (when rels
               (list (list
                      rels
                      (trim-whitespace (extract-string-spanned-by-edge tt))
                      (edge-referent tt))))))
    (error (e)
      (ignore-errors ;; got an error with something printing once
        (format t "~&Error in ~s~%~a~%~%" text e)))))


(defparameter *ev-r* nil)
(defun all-event-relations ()
  (let ((*interpret-in-context* nil)
        (*trap-error-skip-sentence* t))
    (declare (special *interpret-in-context* *trap-error-skip-sentence*
                      *ev-r* *sub-conj* *results* *affected* *leads-to*
                      *purpose*))
    (let* ((ers (loop for s in (all-corpus-sentences)
                   append
                     (loop for er in (event-relations (third s))
                        when (and (stringp (second er)) (> (length (second er)) 15))
                        collect er)))
           (affected
            (loop for er in ers
               when (member 'affected-process (first er))
               collect er))
           (leads-to
            (loop for er in ers
               when (member 'leads-to (first er))
               collect er))
           (purpose
            (loop for er in ers
               when (member 'purpose (first er))
               collect er))
           (results 
            (loop for er in ers when
                 (and (member 'result (first er))
                      (not (member er leads-to :test #'equal))
                      (not (member 'results-in (first er)))
                      (not (member 'leads-to (first er)))
                      (not (member 'event-relation (first er)))
                      (not (member 'purpose (first er))))
               collect er))
           (ev-r 
            (loop for er in ers
               when (and (not (member er results :test #'equal))
                         (not (member er affected :test #'equal))
                         (not (member er leads-to :test #'equal))
                         (or (not (member 'SUBORDINATE-CONJUNCTION (first er)))
                             (member 'SUBORDINATED-EVENT (first er))))
               collect er))
           (sub-conj 
            (loop for er in ers
               when (and (not (member er results :test #'equal))
                         (not (member er affected :test #'equal))
                         (member 'SUBORDINATE-CONJUNCTION (first er))
                         (not (member 'SUBORDINATED-EVENT (first er))))
               collect er)))
      (setq *ev-r* ev-r)
      (setq *sub-conj* sub-conj)
      (setq *results* results)
      (setq *affected* affected)
      (setq *leads-to* leads-to)
      (setq *purpose* purpose)
      `((*ev-r* has ,(length ev-r) elements)
        (*leads-to* has ,(length *leads-to*) elements)
        (*purpose* has ,(length *purpose*) elements)
        (*sub-conj* has ,(length sub-conj) elements)
        (*results* has ,(length results) elements)
        (*affected* has ,(length affected) elements)))))

(defparameter *new-words* nil)
(defparameter *non-comlex-new-words* nil)
(defparameter *comlex-new-words* nil)
(defparameter *non-comlex-new-words-counts* nil)
(defparameter *comlex-new-words-counts* nil)
(defun find-new-words (&optional (do-counts nil))
  (create-article-corpora)
  (setq *new-words*
        (sort (mapcar #'pname (remove-duplicates *newly-found-unknown-words*)) #'string<))
  (setq *non-comlex-new-words*
        (loop for w in *new-words* unless (gethash w *primed-words*) collect w))
  (when do-counts
    (setq *non-comlex-new-words-counts*
          (sort (loop for w in *non-comlex-new-words*
                   collect (list w (length (find-corpus-sents w))))
                #'> :key #'second)))
  (setq *comlex-new-words*
        (loop for w in *new-words* when (gethash w *primed-words*) collect w))
  (when do-counts
    (setq *comlex-new-words-counts*
          (sort (loop for w in *comlex-new-words*
                   collect (list w (length (find-corpus-sents w))))
                #'> :key #'second)))

  `(*new-words* ,(length *new-words*)
                *non-comlex-new-words* ,(length *non-comlex-new-words*)
                *comlex-new-words* ,(length *comlex-new-words*)))

(defparameter *vars* (make-hash-table :size 2000 :test #'equal))

(defun collect-var-info ()
  (declare (special *vars*))
  (clrhash *vars*)
  (loop for c in *categories-defined* do
       (loop for v in (cat-slots c)
          do
            (let* ((vv v)
                   (vr (var-value-restriction vv))
                   vrlist)
              (declare (special vv vr vrlist))
              (setq vrlist
                    (or (assoc vr (gethash (pname vv) *vars*) :test #'equalp)
                        (car (push (list vr) (gethash (pname vv) *vars*)))))
              (nconc vrlist (list c))))))


(defun find-multi-vars ()
  (declare (special *vars*))
  (collect-var-info)
  (let ((res
         (loop for h in (sort (hal *vars*) #'string< :key #'car)
            when (or (cddr h)
                     (cddr (second h)))
            collect
              `(,(car h)
                 ,.(loop for al in (cdr h)
                      collect
                        `(,(cond
                            ((category-p (car al))
                             (cat-name (car al)))
                            ((and (consp (car al))
                                  (eq (caar al) :or))
                             `(:or ,.(mapcar #'cat-name (cdar al))))
                            (t
                             (car al)))
                           ,.(sort
                              (mapcar #'cat-name (cdr al))
                              #'string<)))))))
    (loop for r in res
       do
         (format t "~%(~s" (car r))
         (loop for vrr in (cdr r)
            do
              (format t "~%     (~a ~a)"
                      (car vrr)
                      (string-downcase (format nil "~a" (cdr vrr))))
              )
         (format  t ")"))))
       


;;; Hook into ED

(defun run-editor (filename)
  "Open FILENAME in $EDITOR."
  #+asdf3
  (uiop:run-program
   (format nil "~a ~a"
           (or (uiop:getenv "EDITOR") "emacs")
           (uiop:escape-sh-token (namestring (truename filename)))))
  #-asdf3
  (error "Don't know how to run an editor for ~a." filename))

(defun edit (filename)
  "Edit FILENAME with Emacs or an inferior editor."
  #+swank
  (if swank::*connections*
    (swank:ed-in-emacs filename)
    (run-editor filename))
  #-swank
  (run-editor filename)
  t) ; SBCL stops searching once an ed-function returns true

#+ccl (setq ccl:*resident-editor-hook* 'edit)
#+sbcl (pushnew 'edit sb-ext:*ed-functions*)



