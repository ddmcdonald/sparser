(in-package :sparser)

;; first pass at aggregating general statistical tests and measures from bio-methods files -- these are anything that isn't molecular-bio-specific, and mostly aren't even bio-specific

;; tests

(def-indiv-with-id bio-method "t-test" "NCIT:C53231" :name "t-test")
(def-indiv-with-id bio-method "ttest" "NCIT:C53231" :name "t-test") 

(def-indiv-with-id bio-method "ANOVA" "NCIT:C53241" :name "Analysis of Variance")
(noun "rANOVA" :super bio-method) 

(def-indiv-with-id bio-method "F-test" "NCIT:C53234" :name "F-test") 

;; experiment categories/analysis techniques
(define-category clustering :specializes bio-method
                 :bindings (uid "NCIT:C63918")
  :realization (:verb ("cluster" :present-participle "clustering" :past-tense "clustered")
                      :etf (svo-passive)))

(def-indiv-with-id bio-method "meta-analysis" "NCIT:C17886" :name "meta-analysis" :plural ("meta-analysises" "meta-analyses")) 

(def-indiv-with-id bio-method "end-point" "NCIT:C82866" :name "endpoint value derivation technique")
(def-indiv-with-id bio-method "Endpoint" "NCIT:C82866" :name "endpoint value derivation technique") 
(def-indiv-with-id bio-method "imputation" "NCIT:C80304" :name "statistical imputation")

(def-indiv-with-id bio-method "LOCF" "NCIT:C81198" :name "last observation carried forward imputation technique") 
(def-indiv-with-id bio-method "MOTH" "NCIT:C81204" :name "mean of other group imputation technique" :maintain-case t) 
(def-indiv-with-id bio-method "ROSE" "NCIT:C121991" :name "recognition of outliers by sampling ends" :maintain-case t)
(def-indiv-with-id bio-method "WOV" "NCIT:C81206" :name "worst observed value in a group imputation technique")
(def-indiv-with-id bio-method "permutation" "NCIT:C64219" :name "permutation") 
(def-indiv-with-id bio-method "cross-correlation" "NCIT:C68833" :name "cross-correlation")
;; this also should have a non-biological grounding -- this EFO is for genetic duplication
(def-indiv-with-id bio-method "duplication" "EFO:0004015" :name "duplication")
;; relatedly, "replication" is in new-defs/new-bio-proc as DNA replication...

(def-indiv-with-id bio-method "preprocess" "NCIT:C64201" :name "preprocess") 

(def-indiv-with-id bio-method "FWHM" "NCIT:C94903" :name "full width at half maximum")

(def-indiv-with-id bio-method "null-hypothesis" "NCIT:C142616" :name "null hypothesis") 
(def-indiv-with-id bio-method "t-distribution" "NCIT:C53220" :name "t-distribution")
(def-indiv-with-id bio-method "γ-distribution" "NCIT:C53223" :name "gamma distribution" :synonyms ("Gamma-distribution"))

(define-category investigate :specializes bio-method 
  :mixins (bio-whethercomp)
  :realization
  (:verb "investigate" :noun "investigation"
         :etf (svo-passive)))
(define-category distinguish :specializes bio-method
  :realization
  (:verb "distinguish" :etf (svo-passive)))

;; more complicated now... in molecular-bio, could be about isolating a gene, but it could also be statistical, and now with covid, it may be more on the physical level but for people, and/or psychological
(define-category isolate :specializes bio-method
  :binds ((background biological))
  :realization
  (:verb "isolate" :etf (svo-passive)
         ;;:from background
         ))

(define-category screen :specializes  bio-method
  :realization
  (:verb "screen" :etf (svo-passive)))

(def-synonym screen
    (:noun "screen"))

;; metrics
(def-indiv-with-id bio-method "FdR" "NCIT:C64214" :name "false discovery rate") 

(def-indiv-with-id bio-method "Gaussian" "NCIT:C53215" :name "normal distribution") 
(def-indiv-with-id bio-measurement "eigenvalue" "NCIT:C61068" :name "eigenvalue")
(def-indiv-with-id bio-measurement "median" "NCIT:C28007" :name "median") 
(def-indiv-with-id bio-measurement "variance" "NCIT:C48918" :name "variance") 
(def-indiv-with-id bio-measurement "dispersion" "NCIT:C53321" :name "statistical dispersion")
(def-indiv-with-id bio-measurement "maxima" "NCIT:C82868" :name "maximum value derivation technique") 
(def-indiv-with-id bio-measurement "quantile" "NCIT:C48920" :name "quantile") 
(def-indiv-with-id bio-measurement "quartile" "NCIT:C87306" :name "quartile") 
(def-indiv-with-id bio-measurement "root-mean-square" "NCIT:C73485" :name "root mean square") 
(def-indiv-with-id bio-measurement "percentile" "NCIT:C48919" :name "percentile") 
(def-indiv-with-id bio-method "FWER" "NCIT:C64215" :name "family-wise error rate") 
(def-indiv-with-id bio-method "alpha-1" "NCIT:C67050" :name "affy alpha1 significance") 

;; really more of a predicate
(def-indiv-with-id bio-method "computational" "NCIT:C19233" :name "computational technique")
(def-indiv-with-id bio-method "alpha2" "NCIT:C67051" :name "affy alpha2 significance") 

;; other more general experimentally relevant things:

(define-category subject :specializes bio-method
      :binds ((treatment biological))
      :realization
      (:verb "subject"
             :etf (svo-passive)
             :adj "subject"
             :to treatment))

(noun "approach" :super bio-method)
(noun "baseline" :super  bio-method)
(define-adverb "at baseline")

(noun "control" :super bio-method)

(define-category absence :specializes experimental-condition
  :binds ((measurement (:or measurement bio-scalar)))
  :realization
  (:noun "absence"
	 :of measurement))
(define-category presence :specializes experimental-condition
  :binds ((measurement
           (:or biological ;; can be "in the presence of of HRAS V12"
                measurement bio-scalar)))
  :realization
  (:noun "presence"
	 :of measurement))
;; should this connect to "present" which is currently in bio-predications and only applies to molecules

(noun "method" :super bio-method)

(noun "mode" :super bio-method) ;; complicated -- may be stat measure or general method

(noun "modeling" :super bio-method) ;; but modeling is a nominal that is used
(noun "strategy" :super bio-method
      :binds ((goal bio-process))
      :realization
      (:noun "strategy"
             :for goal))

;; contexts
(noun "setting" :super bio-context)
(noun "trial" :super bio-context)
(noun "pilot" :super bio-context)
(def-synonym pilot (:noun "pilot study"))


(define-category paradigm :specializes process
   :mixins (biological)
  ;; not sure this is the correct term, but intended for things like "forms of ras" 
  :binds ((basis bio-process)) ;; can be a gene or protein, or something else
  :instantiates :self
  :realization
  (:noun "paradigm"
         :m basis
         :of basis
         :for basis))

(noun "consequence" :super bio-quality)

(define-category equivalent :specializes bio-relation
  :realization
  (:adj "equivalent" :noun "equivalence"
	:to participant))

(define-category prerequisite :specializes bio-relation
  :realization
  (:adj "prerequisite" ;;deacetylation of GR by HDAC2 may be prerequisite for GR association with the p65–NF-κB–activated complex
	:noun "prerequisite"
	:for participant))


;; other things I wasn't sure whether to move from bio-methods
;; label, tag, means, panel, way, work, medium, networking?, role, aspect, gain

;; things we might move from bio-processes
;; fate, manner, outcome, cascade?? stimulus/stimuli
;; and from new-defs/new-bio-proc:
;; replication (which is currently about DNA), resolution, adaptation, acclimation, cognition, desensitization (which is currently about receptors), integration (which is currently about DNA), reproduction

;; bio-predications:
;; active/inactive -- currently is a molecule-state and binds molecule, pathway, or bio-state
;; apparent, asymmetric, conventional, standard, familial, lethal, linear, resting, dimensional, background, candidate, clinical, pre-clinical, combinatorial, constitutive, efficacy, general, integrative, intriguing, least-selective, living, mutual, parallel, present (see above at presencec), preset, prevalent, rate-limiting, real-time, responsible, short-lived, stable, sufficient, supplementary, unknown, unmmodified,

;;from terms.lisp
;; current, defect, deficient, detail, fail-proof, reliable, effective, sequential, fact, ineffective, insensitive, insensitivity, insight, necessary, notably, mechanistically, partner, patient, population, potent, relative, strong, responsive, selective, sensitive, sensitivity, specific, suitable, surprisingly, unable, unresponsive, useful

;; measurements
;; data, dataset, throughput, dynamics, extent, mass, proportion, scale

;; many things in terms-to-move are relevant to experimental setup/stats too
;; as are several things in verbs.lisp, including participate, support, hypothesize, feature, characterize, deduce
;; also general-verbs, including: analyze/analysis, assumption, attribute, cause, confirm, contrast, contribute, dependent, evidenced, describe, detect, determine, diminish, display, effect, direct, establish, examine, exist, explain, fit (which for some reason has as a noun "application"??), interact (which currently requires a biological interactor, sample, select, result, many more... including test

;; taxonomy
;; bio-groupings: group, set, subset, collection, cluster... also, currently these have members that must be bio-entities, so i'm wondering how that relates to talking about datapoints
;; evidence: experiment, study, observation (which is divorced from observe)
;; bio-methods: measure, correlate
;; bio-location: domain, segment -- these are complicated because they're currently protein-domains...
;; variant: varaiant specializes protein and includes variant, form, state, determinant, 


;; rhetoric  also seem useful

