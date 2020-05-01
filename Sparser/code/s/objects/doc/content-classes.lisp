;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 2019-2020 David D. McDonald -- all rights reserved
;;;
;;;     File:  "content-classes"
;;;   Module:  "objects;doc;"
;;;  Version:  April 2020

#| Created 11/25/19 to separate out container component classes  |#

(in-package :sparser)


;;--- All levels, bio-specific

(defclass aggregated-bio-terms ()
  ((proteins :initform nil :accessor aggregated-proteins)
   (residues :initform nil :accessor aggregated-residues)
   (biochemical-entity :initform nil :accessor aggregated-biochemical-entity)
   (bio-processes :initform nil :accessor aggregated-processes)
   (medical-method :initform nil :accessor aggregated-medical-method)
   (experimental-method :initform nil :accessor aggregated-experimental-method)
   (medical-conditions :initform nil :accessor aggregated-medical-conditions) ; medical-condition
   (infectious-agents :initform nil :accessor aggregated-infectious-agents) ; infectious-agent
   (cellular-locations :initform nil :accessor aggregated-cellular-locations)
   (cell-type :initform nil :accessor aggregated-cell-type)
   (cell-line :initform nil :accessor aggregated-cell-line)
   (protein-domain :initform nil :accessor aggregated-protein-domain)
   (molecule :initform nil :accessor aggregated-protein-molecule)
   (comlex :initform nil :accessor aggregated-comlex)
   (other :initform nil :accessor aggregated-other))
  (:documentation "Collects the entities and relations of
     the document layer below them summarizes them as
     tables of individuals and their count.
     Note that if you extend this class you need to also extend
     *term-buckets* to match.
     The type check that directs mentions to one of these 'buckets'
     is done by aggregation-target in objects/doc/content-methods.lisp
"))

(defparameter *term-buckets*
  '(proteins residues bio-processes medical-conditions infectious-agents 
    cellular-locations cell-type cell-line
    protein-domain molecule
    other)
  "Used by downstream routines that are performing the identical
 operation on each of the slots in aggregated-bio-terms.")



;;--- paragraph level

(defclass paragraph-characteristics ()
  ((s-count :initform 0 :accessor sentence-count
    :documentation "How many sentences in the paragraph")
   (total-words :initform 0 :accessor word-count
    :documentation "How many words in the paragraph")
   )
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
    modeling"))


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
  ((list :initform nil :accessor items
    :documentation "Simple list. Items are just pushed onto it
      making them in reverse cronological order."))
  (:documentation "Maintains a simple list or alist. Up to the
     reader of the list to sort it into various kinds of things."))

(defclass sentence-text-structure ()
  ((subject :initform nil :accessor sentence-subject
    :documentation "The subject of the sentence if we
     were able to identify it."))
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

