;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 2019-2022 David D. McDonald -- all rights reserved
;;;
;;;     File:  "content-classes"
;;;   Module:  "objects;doc;"
;;;  Version:  February 2022

#| Created 11/25/19 to separate out container component classes  |#

(in-package :sparser)


;;--- All levels, bio-specific

(defclass aggregated-bio-terms ()
  ((proteins :initform nil :accessor aggregated-proteins)
   (drugs :initform nil :accessor aggregated-drugs)
   (residues :initform nil :accessor aggregated-residues)
   (other-chemical-entities :initform nil :accessor aggregated-other-chemical-entities)
   (biological-processes :initform nil :accessor aggregated-biological-processes)
   (medical-methods :initform nil :accessor aggregated-medical-methods)
   (experimental-methods :initform nil :accessor aggregated-experimental-methods)
   (medical-conditions :initform nil :accessor aggregated-medical-conditions) ; medical-condition
   (infectious-agents :initform nil :accessor aggregated-infectious-agents) ; infectious-agent
   (biological-predications :initform nil :accessor aggregated-biological-predications)
   (cellular-locations :initform nil :accessor aggregated-cellular-locations)
   (organs/tissues :initform nil :accessor aggregated-organs/tissues)
   (species :initform nil :accessor aggregated-species)
   (cell-types :initform nil :accessor aggregated-cell-types)
   (cell-lines :initform nil :accessor aggregated-cell-lines)
   (protein-domains :initform nil :accessor aggregated-protein-domains)
   ;;(molecule :initform nil :accessor aggregated-protein-molecule)
   (locations :initform nil :accessor aggregated-locations)
   (comlex :initform nil :accessor aggregated-comlex)
   (other :initform nil :accessor aggregated-other))
  (:documentation "Collects the entities and relations of
     the document layer below them summarizes them as
     tables of individuals and their count.
     Note that if you extend this class you need to also extend
     *term-buckets* to match.
     The type check that directs mentions to one of these 'buckets'
     is done by aggregation-target in objects/doc/content-methods.lisp"))

(defparameter *term-buckets*
  '(drugs proteins residues other-chemical-entities ;;molecule
    biological-processes medical-methods
    experimental-methods medical-conditions infectious-agents
    biological-predications
    cellular-locations cell-types cell-lines organs/tissues species
    protein-domains  locations
    comlex
    other)
  "Used by downstream routines that are performing the identical
 operation on each of the slots in aggregated-bio-terms.")

(defparameter *term-buckets-to-show* *term-buckets*
  "Will be a subset of the term buckets tailored to show what's
   relevant (reliable) for a given application. Defaults to the full set")

(defun tailor-term-buckets-to-covid ()
  (declare (special *term-buckets-to-show*))
  (setq *term-buckets-to-show* *term-buckets*))

(defun tailor-term-buckets-to-score ()
  (declare (special *term-buckets-to-show*))
  (setq *term-buckets-to-show*
        '(experimental-methods medical-conditions infectious-agents
          biological-predications locations comlex other)))

;;--- paragraph level

(defclass paragraph-characteristics ()
  ((s-count :initform 0 :accessor sentence-count
    :documentation "How many sentences in the paragraph")
   (total-words :initform 0 :accessor word-count
     :documentation "How many words in the paragraph")
   (wps :initform nil :accessor words-per-second
     :documentation "A string to report. See compute-words-per-second"))
  (:documentation "A set of easily measured, largely structural
    rather than semantic, properties of a paragraph.
    Populated by collect-text-characteristics after each
    paragraph has been analysed."))

(defclass text-relations ()
  ((head-relations :initform nil :accessor head-relations)
   (classifier-heads :initform nil :accessor classifier-head-relations)
   (modifier-heads :initform nil :accessor modifier-head-relations)
   (adjacencies :initform nil :accessor adjacency-relations))
  (:documentation
   "Provides slots for counting the relations in simple discource
    modeling. The more complex relations developed for Grok that
    could populate these slots are worked out in analysers/sdmp/"))


;;--- sentence level

(defclass sentence-parse-quality ()
  ((great :initform 0 :accessor parses-with-one-edge
    :documentation "Number of sentences in the doc element
      that were spanned by one edge.")
   (medium :initform 0 :accessor medium-quality-parses
    :documentation "Number of sentences in the doc element
      that were spanned by 2 to 5 edges.")
   (horrible :initform 0 :accessor horrible-parses
    :documentation "Number of sentences in the doc element
      that were spanned by more than 5 edges."))
  (:documentation "Compute measures of how well we are doing
    in reading. At the sentence level and aggregated at
    higher levels of document structure."))

(defclass sentence-tt-counts ()
  ((count-list :initform '() :accessor sentence-tt-count
    :documentation "Treetop counts for each sentence in a paragraph")))

(defclass entities-and-relations ()
  ((entities :initform nil :accessor entities-in-sentence)
   (relations :initform nil :accessor relations-in-sentence)
   (treetop-count :initform 0 :accessor treetops-in-sentence))
  (:documentation "Copies the output of identify-relations
     from the post-analysis-operations function. Note that
     this is dependent on the *readout-relations* flag.
     Treetop count is simple by-product of the e/r calculation."))

(defclass accumulate-items ()
  ((items-alist :initform nil :accessor items
    :documentation "Simple list. Items are just pushed onto it
      making them in reverse cronological order.")
   (germaine :initform nil :accessor germaine-items
     :documentation "List of the items that are of particular
        interest in the current application"))
  (:documentation "Maintains a simple list or alist. Up to the
     reader of the list to sort it into various kinds of things."))

(defclass sentence-text-structure ()
  ((subject :initform nil :accessor sentence-subject
    :documentation "The subject of the sentence if we
     were able to identify it.")
   (mvb :initform nil :accessor sentence-main-verb
     :documentation "The main verb of the sentence (main clause?) as
       identified by sweep/form-dispatch"))
  (:documentation
   "Provides long-term representation of the contents of
    the sentence that will be relevant to later sentences.
    Alusion to the NLG notion of text structure."))

(defclass sentence-discourse-history ()
  ((individuals :accessor sentence-individuals
    :documentation "This is a version of *lifo-instance-list* 
     that been reversed to that is in left-to-right order
     and had its edges removed.")))


;;--- processing

(defclass parsing-status ()
  ((level-completed :initform :initial :initarg :level
                    :accessor level-completed
    :documentation "The parsing is tiered into successive levels
      of analysis. Which one have we completed for this level of
      document structure?
      Possible values:
        :initial  -- we're at the start of the sentence and
                   haven't scanned any part of it.
        :scanned -- we've run scan-terminals-loop over it
        :chunked -- we've run the phrase delimiter over it"))
  (:documentation "Used by period-hook to keep track of what
     phase it's in. Less used now (11/14) because more of the
     multi-pass-over-sentence control is organized as direct
     calls."))


(defclass records-of-delayed-actions ()
  ((pending-definite-references
    :initform nil :accessor pending-def-references
    :documentation "A list of any edges that were appreciated
      to be definite references that we consider trying to
      identify referents for. See determiner-noun for any
      adjustments to what's stored.")
   (pending-partitives
    :initform nil :accessor pending-partitive-references
    :documentation "A list of any edges that were appreciated
      to be partitive references of the form <quantifier> of <definite-NP>.")
   (preposed-aux
    :initform nil :accessor preposed-aux
    :documentation "The edge over the auxiliary or model that was
      'moved' to 'sentence-initial' to indicate a question, along
      with its original form label, as a dotted pair")
   (initial-wh :initform nil :accessor initial-wh
    :documentation "Records instances of the edge over a 'wh-marker'
      that's done during WH questions.")
   (sentence-mentions :initform nil :accessor sentence-mentions
    :documentation "all mentions created within the sentence"))
  
  (:documentation "Each field is a kind of phenomena that
    we can't make a decision about. The simplest thing to
    put in them is probably the edge that's the locus of
    the issue, but it's really a decision between the recorder
    and the function that reads the record."))

