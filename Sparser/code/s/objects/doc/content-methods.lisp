;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 2013-2018 David D. McDonald -- all rights reserved
;;;
;;;     File:  "content-methods"
;;;   Module:  "objects;doc;"
;;;  Version:  September 2018

;; Created 5/12/15 to hold the container mixings and such that need
;; to have the document model elements already defined so they can
;; be referred to. 5/27/15 Subject is now the referent rather than
;; the edge. 6/8/15 Added get-element methods and began to play with
;; after methods. 6/10/15 Added paragraph aggregator. 9/8/15 added
;; long-term-ifying mentions to paragraph. 11/3/15 Added local dynamic
;; bindings of the current document element to facilitate debugging.
;; 1/4/16 gating call to paragraph-level aggregation

(in-package :sparser)

;;;---------------------------------------------------
;;; Action hook for after a document element finishes
;;;---------------------------------------------------

(defparameter *apply-document-after-actions* t
  "Gates whether to run after actions. Makes it possible to commit
  the file while they're still being debugged.")

(defparameter *run-aggregation-after-action* t
  "Gates call to aggregate-bio-terms in the paragraph after-
   actions. Exposed subtle bugs 1/4/16 so want to only run it
   deliberately to look at those bugs.")

(defgeneric after-actions (document-element)
  (:documentation "Carry out the actions to be taken when all of
     the children of a given document element have been read."))

(defmethod after-actions ((p paragraph))
  (when *apply-document-after-actions*
    (let ((*current-paragraph* p))
      (declare (special *current-paragraph*))
      (when *run-aggregation-after-action*
        (aggregate-bio-terms p))
      (assess-sentence-analysis-quality p)
      (collect-text-characteristics p)
      (make-mentions-long-term)))) ; zero's the list in the lattice

(defmethod after-actions ((te title-text))
  (when *apply-document-after-actions*
    ;;/// should it also bind *current-paragraph* ?
    (make-mentions-long-term)
    ;;(push-debug `(,te))
    ;;(lsp-break "after parsing ~a" te)
    (when *run-aggregation-after-action*
      (aggregate-bio-terms te))
    (assess-sentence-analysis-quality te)))

(defmethod after-actions ((s section))
  (when *apply-document-after-actions*
    (let ((*current-section* s))
      (declare (special *current-section*))
      (do-section-level-after-actions s))))

(defmethod after-actions ((ss section-of-sections))
  (when *apply-document-after-actions*
    (let ((*section-of-sections* ss))
      (declare (special *section-of-sections*))
      (do-section-level-after-actions ss))))

(defmethod after-actions ((a article))
  (when *apply-document-after-actions*
    (let ((*current-article* a))
      (declare (special *current-article*))
      (do-section-level-after-actions a))))


(defun do-section-level-after-actions (s)
  (summarize-parse-performance s)
  (add-bio-term-counts s)
  (sort-bio-terms s (contents s))
  s)


;;;------------------------------------
;;; aggregating entities and relations
;;;------------------------------------

(defgeneric add-bio-term-counts (document-element)
  (:documentation "Sweep through the daughers of the document
   tallying the terms they record and the incident count
   of each term. Add tallies of terms to arrive at incident
   count at this level of the document. Writen as method
   to provide the option to do different things at different
   levels."))

(defmethod add-bio-term-counts ((d document-element))
  (let ((sink (contents d))
        (daughters (children d)))
    (loop for next in daughters
       do (accumulate-terms-and-add-counts
           sink (contents next)))
    d))

(defun accumulate-terms-and-add-counts (sink source)
  (when source ;; source is nil when section has been ignored
    (assert (typep sink 'aggregated-bio-terms))
    (assert (typep source 'aggregated-bio-terms))
    (add-new-terms-or-add-counts 'proteins sink source)
    (add-new-terms-or-add-counts 'residues sink source)
    (add-new-terms-or-add-counts 'bio-processes sink source)
    (add-new-terms-or-add-counts 'other sink source)
    sink))

(defun add-new-terms-or-add-counts (field sink source)
  (let ((source-terms (slot-value source field))
        (sink-terms (slot-value sink field)))
    (loop for source-term in source-terms
       do (let* ((term (car source-term))
                 (sink-term (assq term sink-terms)))
            (cond
              (sink-term
               (let ((sink-count (cdr sink-term))
                     (source-count (cdr source-term)))
                 (rplacd sink-term
                         (+ sink-count source-count))))
               (t
                (push source-term
                      (slot-value sink field))))))
    sink))

    

;;--- sentences => paragraph contents

(defclass aggregated-bio-terms ()
  ((proteins :initform nil :accessor aggregated-proteins)
   (residues :initform nil :accessor aggregated-residues)
   (bio-processes :initform nil :accessor aggregated-processes)
   (other :initform nil :accessor aggregated-other))
  (:documentation "Collects the entities and relations of
     the document layer below them summarizes them as
     tables of individuals and their count."))


(defmethod aggregate-bio-terms ((p paragraph))
  "Collect the raw lists of entities and relations from 
  the sentences of the paragraph and distribute them
  into buckets (slots on the content object) at whatever
  degree of delicacy seems the most useful."
  (let ((sentences (sentences-in-paragraph p)))
    ;;/// something should attend to the topic sentence
    (dolist (s sentences)
      (aggregate-sentence-bio-terms s p)
      (sort-bio-terms p (contents p)))))

(defmethod aggregate-bio-terms ((tt title-text))
  (let ((s (children tt)))
    (aggregate-sentence-bio-terms s tt)
    (sort-bio-terms tt (contents tt))))

(defun aggregate-sentence-bio-terms (s p)
  "Given a sentence s and paragraph p retrieve the entities
   and relations from s and store them on p."
  (aggregate-terms p (get-entities s))
  (aggregate-terms p (get-relations s)))

(defun aggregate-terms (paragraph terms)
  "Store the terms in the content object of the paragraph
   using slots determined by the function aggregation-target
   that tries to make a useful breakdown by type.
   We record the number of times each term was mentioned
   in the paragraph so we can accumulate by count in
   larger sections."
  (when terms
    (let ((c (contents paragraph)))
      (dolist (term terms)
        (let ((slot (aggregation-target term)))
          (when slot ;; ignoring categories and literals
            (let ((bucket (slot-value c slot)))
              (cond
                ((null bucket)
                 (let* ((entry `(,term . 1))
                        (bucket `( ,entry  )))
                   (setf (slot-value c slot) bucket)))
                (t
                 (let ((entry (when bucket (get-from-bucket term bucket))))
                   (if entry
                     (incf-bucket-entry entry)
                     (make-bucket-entry term bucket slot c))))))))))))

(defun aggregation-target (i)
  ;; Return the name of the slot that this individual 
  ;; should be added to.
  (typecase i
    (individual
     (cond
      ((itypep i 'bio-process) 'bio-processes)
      ((itypep i '(:or protein human-protein-family))
       'proteins)
      ((itypep i 'residue-on-protein) ;; or other regions
       'residues)
      ;; Could consider mutations, drugs, cell-lines, what else?
      (t 'other)))
    (category ;; really ignore them?
     nil)
    (otherwise
     (error "Unexpected type of thing passed to aggregation-target: ~
             ~a~%  ~a" (type-of i) i))))

(defun get-from-bucket (term bucket)
  (assq term bucket))

(defun incf-bucket-entry (entry)
  (incf (cdr entry)))

(defun make-bucket-entry (term bucket slot-name contents-instance)
  ;; bucket exists. Need to add this term to it
  (let* ((entry `(,term . 1))
         (new-bucket-value (cons entry bucket)))
    (setf (slot-value contents-instance slot-name)
          new-bucket-value)))

;;--- display (see summary-document-stats)

(defgeneric display-top-bio-terms (document-element &optional stream)
  (:method ((a article) &optional stream)
    (let* ((stream (or stream *standard-output*))
           (c (contents a))
           (proteins (take-first-n 5 (aggregated-proteins c))))
      (format stream "~&~2TTop 5 proteins: ~a" (car proteins))
      (loop for p in (cdr proteins) do
           (format stream "~&~18T~a" p)))))


;;;-----------------------------------
;;; tally properties of text qua text
;;;-----------------------------------

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

(defgeneric collect-text-characteristics (doc-element)
  (:documentation "Called from after-action on paragraphs.
    Counts shallow attributes over the sentences in the
    paragraph to get a coarse style marker of a sort.")
  
  (:method ((p paragraph))
    (let ((content (contents p))
          (sentences (sentences-in-paragraph p)) ; list of sentence objects
          (word-count (pos-token-index (ends-at-pos p))))
      (setf (sentence-count content) (length sentences))
      (setf (word-count content) word-count)
      ;;(break "collect - ~a" p)

      (format t "~&Paragraph ~a~%  ~a sentences~%  ~a words~
                 ~%  ~4,1F words per sentence~%"
              p (length sentences) word-count
              (float (/ word-count (length sentences)))))))



;;;--------------------------------
;;; how well is our analysis doing
;;;--------------------------------

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

   
(defmethod assess-sentence-analysis-quality ((p paragraph))
  (let* ((sentences (sentences-in-paragraph p))
         (content (contents p))
         (tt-list (loop for s in sentences
                    collect (get-tt-count s))))
    (setf (sentence-tt-count content) tt-list)))

(defmethod assess-sentence-analysis-quality ((tt title-text))
  ;; presuming it's just one sentence long
  (let* ((sentence (children tt))
         (content (contents tt))
         (count (get-tt-count sentence)))
    (setf (sentence-tt-count content) count)))
    

(defun grade-sentence-tt-counts (paragraph quality)
  (when (contents paragraph)
    (let ((count-list (sentence-tt-count (contents paragraph))))
      (loop for count in (when (consp count-list) count-list) ;; not sure why this was 0 and not a list in some cases
            when (= 1 count) do (incf (parses-with-one-edge quality))
            when (and (> count 1) (<= count 5))
            do (incf (medium-quality-parses quality))
            when (> count 5) do (incf (horrible-parses quality))))))

(defun add-parse-quality-grades (source sink)
  "Expects to be part of a loop where the sink content object
   is added to by a sucession of sources"
  (let ((current-great (parses-with-one-edge sink))
        (current-medium (medium-quality-parses sink))
        (current-horrible (horrible-parses sink)))
    (setf (parses-with-one-edge sink)
          (+ current-great (parses-with-one-edge source)))
    (setf (medium-quality-parses sink)
          (+ current-medium (medium-quality-parses source)))
    (setf (horrible-parses sink)
          (+ current-horrible (horrible-parses source)))))

(defun aggregate-parse-performance (doc-element content)
  "Add the 'grades' of each of the children to the grades
   in the sentence-parse-quality fields of this level."
  (when (typep content 'sentence-parse-quality)
    ;; rule out title-text and such the caller could feed us
    (dolist (child (children doc-element))
      (let ((child-content (contents child)))
        (when (typep child-content 'sentence-parse-quality)
          (add-parse-quality-grades child-content content))))))
             
(defmethod summarize-parse-performance ((e document-element))
  (let ((content (contents e))
        (children (children e)))
    (when (typep content 'sentence-parse-quality)
      (dolist (child children)
        (typecase child
          ((or paragraph title-text)
           (grade-sentence-tt-counts child content))
          ((or section section-of-sections article)
           (aggregate-parse-performance e content)))))))


(defun show-parse-performance (doc-element
                               &optional (stream *standard-output*))
  (let ((content (contents doc-element)))
    (if (not (typep content 'sentence-parse-quality))
      (format stream "~a does not record parse quality" doc-element)
      (let ((great (parses-with-one-edge content))
            (medium (medium-quality-parses content))
            (horrible (horrible-parses content)))
        (format stream "~&  Parsing coverage: ~a (1 edge), ~a (2-5), ~a (> 5)~%"
                great medium horrible)))))


;;--------- summary statistics

(defgeneric summary-document-stats (document-element &optional stream)
  (:method ((a article) &optional stream)
    (unless stream (setq stream *standard-output*))
    (format stream "~&For ~a" a)
    (show-parse-performance a stream)
    (display-top-bio-terms a stream)))
    

      
;;;----------------------------------------------
;;; convenience accessors to parts of an article
;;;----------------------------------------------

(defgeneric paragraphs-in-doc-element (document-element)
  (:documentation "Locate and return a list of all the paragraph
 objects at or below the indicated document-element")
  (:method ((p paragraph))
    (list p))
  (:method ((tt title-text)) nil)
  (:method ((a article))
    (loop for child in (children a)
       append (paragraphs-in-doc-element child)))
  (:method ((s section))
    (loop for child in (children s)
       append (paragraphs-in-doc-element child)))
  (:method ((ss section-of-sections))
    (loop for child in (children ss)
       append (paragraphs-in-doc-element child))))

(defun find-paragraphs-containing-string (string document-element)
  (loop for p in (paragraphs-in-doc-element document-element)
     when (search string (content-string p))
     collect p))


(defmethod sections-in-article ((a article))
  (children a))

(defmethod has-paragraphs? ((s has-children))
  (some #'(lambda (c) (typep c 'paragraph))
        (children s)))

(defmethod has-subsections? ((s has-children))
  (some #'(lambda (c) (typep c 'section))
        (children s)))

(defmethod nth-child ((n integer) (a has-children))
  ;; Argument is 1-based, so needs conversion to
  ;; zero-based
  (nth (1- n) (children a))) ;; what else could it be?

(defmethod first-section ((a article))
  (first (children a)))
(defmethod first-section ((ss section-of-sections))
  (loop for c in (children ss)
    when (typep c 'section) return c))

(defmethod first-paragraph ((a article))
  (first-paragraph (first-section a)))
(defmethod first-paragraph ((s section))
  (cond
   ((has-paragraphs? s)
    (loop for c in (children s)
      when (typep c 'paragraph) return c))
   ((has-subsections? s)
    (first-paragraph (first-section s)))))

(defmethod sentences-in-paragraph ((p paragraph))
  ;; They chain off the child. ////elevate?
  (let* ((s1 (children p))
         (sentences (list s1))
         (s s1)
         next )
    (loop 
       (unless (and
		(slot-boundp s 'next)
		(next s)) ;; had a NULL next in articel 23 of June -- should investigate
        (return))
      (setq next (next s))
      (when (string-equal (sentence-string next) "")
        (return))
      (setq s next)
      (push s sentences))
    (nreverse sentences)))


;;;----------------------------------
;;; what did we find in the sentence
;;;----------------------------------

(defclass entities-and-relations ()
  ((entities :initform nil :accessor entities-in-sentence)
   (relations :initform nil :accessor relations-in-sentence)
   (treetop-count :initform 0 :accessor treetops-in-sentence))
  (:documentation "Copies the output of identify-relations
     from the post-analysis-operations function. Note that
     this is dependent on the *readout-relations* flag.
     Treetop count is simple by-product of the e/r calculation."))

(defmethod set-entities ((s sentence) (list list))
  (setf (entities-in-sentence (contents s)) list))
(defmethod set-relations ((s sentence) (list list))
  (setf (relations-in-sentence (contents s)) list))
(defmethod set-tt-count ((s sentence) (number integer))
  (setf (treetops-in-sentence (contents s)) number))

(defmethod get-entities ((s sentence))
  (entities-in-sentence (contents s)))
(defmethod get-relations ((s sentence))
  (relations-in-sentence (contents s)))
(defmethod get-tt-count ((s sentence))
  (treetops-in-sentence (contents s)))


(defparameter *mentions-in-sentence* (make-hash-table :size 10000))
(defparameter *sentence-mismatch-mentions-ht* (make-hash-table :size 10000))
(defparameter *break-on-sentence-mention-mismatches* nil)
(defparameter *reset-sent-mentions* nil)

(defmethod get-mentions ((s sentence))
  (sentence-mentions s))

(defmethod set-mentions ((s sentence))
  (let ((s-toc-ind (toc-index s))
        (init-mentions (find-all-mentions s)))
    (setf (gethash s *mentions-in-sentence*)
          (if (eq (search "NIL" s-toc-ind :test #'equalp) 0)
              ;; we're not in an article
              ;; need to be case-insensitive for when "nil" is lowercase...
              init-mentions
              (loop for mention in init-mentions
                    collect (let ((ment-art-loc (car (mentioned-in-article-where mention))))
                              (cond ((or (null ment-art-loc)
                                  ;; if we're not in an article, this is unbound
                                         (equal ment-art-loc s-toc-ind))
                                     mention)
                                    ((mention-in-sentence? mention s)
                                     ;; check if in bounds of current
                                     ;; sentence -- if so, then the
                                     ;; mentioned-in-article-where is
                                     ;; wrong and should be updated
                                     (push mention *reset-sent-mentions*)
                                     (setf (mentioned-in-article-where mention)
                                           (cons s-toc-ind *current-paragraph*))
                                     mention)
                                    (t
                                     (push mention
                                           (gethash
                                            s
                                            *sentence-mismatch-mentions-ht*))
                                     (if *break-on-sentence-mention-mismatches*
                                         (lsp-break "bad mention sentence match for ~s ~s~%"
                                                    mention s)
                                       ;; this is problematic because
                                       ;; there will be bad mentions
                                       ;; in the table -- hopefully
                                       ;; will find and fix all these
                                       ;; cases
                                         mention)))))))))

(defun mention-in-sentence? (mention s)
  "Given a mention and a sentence, determine if the mention's bounds
   are within the sentence's bounds"
  (when (mention-source mention)
    ;; This can be nil when running in documents where the parsing
    ;; context is just one paragraph long
    (let* ((m-edge (mention-source mention))
           (m-start-index
            (pos-array-index (pos-edge-starts-at m-edge)))
           (m-end-index
            (pos-array-index (pos-edge-ends-at m-edge)))
           (s-start-index
            (pos-array-index (starts-at-pos s)))
           (s-end-index
            (pos-array-index (ends-at-pos s))))
      (and (<= s-start-index m-start-index)
           (>= s-end-index m-end-index)))))

;;;----------------------------------------------
;;; functionally salient aspects of the sentence
;;;----------------------------------------------

(defclass sentence-text-structure ()
  ((subject :initform nil :accessor sentence-subject
    :documentation "The subject of the sentence if we
     were able to identify it."))
  (:documentation
   "Provides long-term representation of the contents of
    the sentence that will be relevant to later sentences.
    Alusion to the NLG notion of text structure."))

(defmethod set-sentence-subject ((e edge) (s sentence))
  (let ((referent (edge-referent e)))
    ;;/// should we insist that it be an individual ?
    (setf (sentence-subject (contents s)) referent)))

(defmethod get-sentence-subject ((s sentence))
  (sentence-subject (contents s)))

(defmethod get-sentence-subject ((ignore null))
  nil)


;;;--------------------------
;;; ordered list of entities
;;;--------------------------

(defclass sentence-discourse-history ()
  ((individuals :accessor sentence-individuals
    :documentation "This is a version of *lifo-instance-list* 
     that been reversed to that is in left-to-right order
     and had its edges removed.")))

(defmethod set-discourse-history ((s sentence) (history t))
  "Called from end-of-sentence-processing-cleanup when nothing more
   is going to be modified."
  (setf (sentence-individuals (contents s)) history))
          


;;;---------------------
;;; status of the parse
;;;---------------------

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

(defmethod set-sentence-status ((s sentence) (keyword symbol))
  (let ((c (contents s))) ;; for debugging
    (set-sentence-status c keyword)))

(defmethod set-sentence-status ((s parsing-status) (keyword symbol))
  (setf (level-completed s) keyword))

(defmethod parsing-status ((s sentence))
  (parsing-status (contents s)))

(defmethod parsing-status ((s parsing-status))
  (level-completed s))



;;;----------------------------
;;; records of delayed actions
;;;----------------------------

#| This is for remembering that there are operations that
we need to do but couldn't do (or by policy decided not to do)
while we were in the process of parsing a sentence. When the
sentence has finished (see the function post-analysis-operations)
we ought to have enough context to carry these out.
   The first example is definite NPs. The record is laid down
by the syntax function determiner-noun and the reader (presently)
is a case in handle-any-anaphor
|#
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


(defgeneric record-preposed-aux (edge original-form)
  (:documentation "Store enough information about a preposed verbal
     element to be able to later reconstruct its properties if it were
     to be 'moved' back to its standard position in a VG.")
  (:method ((e edge) (original-form category))
    (let ((s (identify-current-sentence)))
      (setf (preposed-aux (contents s)) (cons e original-form)))))

(defun original-form-of-preposed-aux ()
  "If the delayed action record in the contents of the current sentence
   records a preposed auxiliary, then return the contents of the
   field, i.e. the edge over the auxiliary and its original form."
  (let* ((s (identify-current-sentence))
         (preposed-aux-info (preposed-aux (contents s))))
    (when preposed-aux-info
      (let ((edge (car preposed-aux-info))
            (original-form (cdr preposed-aux-info)))
        (values edge
                original-form)))))

(defun mask-preposed-aux ()
  "Some question operation has handled the preposed-aux but
   did it on a just portion of the sentence so we have to
   turn this flag off."
  (let ((s (identify-current-sentence)))
    (setf (preposed-aux (contents s)) nil)))
    
(defun preposed-aux? (&key in-vg? first-np-edge)
  (original-form-of-preposed-aux))


(defun aux-before-np? (&key in-vg? first-np-edge)
  "Look in the chart just to the left of current chunk"
  ;; called by chunker methods ng-compatible? and vg-start?
  (declare (special *chunk*))
  (let ((edges (cond ((or in-vg?
                          (and (boundp '*chunk*)
                               (member 'vg (chunk-forms *chunk*))))
                      (edges-before-chunk (car (last *chunks*))))
                     (first-np-edge (edges-before first-np-edge))
                     (t (edges-before-chunk)))))
    (loop for e in edges              
       when (member (cat-name (edge-form e))
                    '(preposed-auxiliary))
       do (return (values e (edge-form e))))))

    
        


(defgeneric record-initial-wh (edge)
  (:documentation "Just set the field with the edge, which
     provides a marker to make-this-a-question-if-appropriate")
  (:method ((e edge))
    (let ((s (identify-current-sentence)))
      (setf (initial-wh (contents s)) e))))

(defun initial-wh? ()
  (or
   (let ((s (identify-current-sentence)))
     (initial-wh (contents s)))
   (let ((first-edge (car (all-tts))))
     (when (and (edge-p first-edge)
                (edge-referent first-edge) ;; "in order to" -- pw w/o referent
                (or (itypep (value-of 'has-determiner (edge-referent first-edge))
                            '(:or what which how when why))
                    (itypep (value-of 'quantifier (edge-referent first-edge))
                            '(:or what which how when why))))
       first-edge))))




(defmethod add-pending-def-ref (determiner (e edge) (s sentence))
  (let ((contents (contents s)))
    ;; have to include determiner -- there is a difference between
    ;; "the proteins", "these proteins" and "those proteins", all of which
    ;; are definite references
    (push (list determiner e) (pending-def-references contents))))

(defmethod pending-definite-references ((s sentence))
  (pending-def-references (contents s)))

(defun has-definite-determiner? (edge)
  (declare (special *sentence-in-core*))
  (unless *sentence-in-core*
    (error "Threading bug. No value for *sentence-in-core*"))
  (or (member (cat-name (edge-category edge)) '(these those them pronoun/plural))
      (member edge (pending-definite-references *sentence-in-core*) :key #'second)))

(defun update-definite-determiner (edge)
  (declare (special *all-np-categories* *sentence-in-core*))
  (when (and *sentence-in-core*
             (category-p (edge-form edge))
             (member (cat-symbol (edge-form edge)) *all-np-categories*))
    (loop for pair in (pending-definite-references *sentence-in-core*)
       when
	 (or (eq (second pair) (edge-left-daughter edge))
	     (eq (second pair) (edge-right-daughter edge)))
       do
	 (setf (second pair) edge)
	 (return t))))

(defmethod add-pending-partitive (quantifier (e edge) (s sentence))
  (let ((contents (contents s)))
    (push (list quantifier e) (pending-partitive-references contents))))

(defmethod pending-partitives ((s sentence))
  (pending-partitive-references (contents s)))

(defmethod sentence-mentions ((s sentence))
  (sentence-mentions (contents s)))

;;;-------------------
;;; table of contents
;;;-------------------

;; Based on the indexed class

(defgeneric set-document-index (doc-element number-or-letter)
  (:documentation "Sets the identifying index and accumulated
     table of contents on the document element (it's parents)
     if that has not already been done. 
     Called by the read-from-document for each element type."))

(defmethod set-document-index (element index)
  (declare (ignore element index)))

(defmethod set-document-index ((a article) index)
  (declare (ignore index))
  (unless (toc-index a)
    (setf (doc-index a) (name a))
    (setf (toc-index a)
          (format nil "~a" (name a)))))

(defmethod set-document-index ((ss section-of-sections) (index integer))
  (unless (toc-index ss)
    (let* ((parent (parent ss))
           (parent-toc (toc-index parent)))
      ;; The problem these checked for has been fixed,
      ;; but that's not to say some change might bring it back
      #+ignore(unless parent-toc
        (lsp-break "Null toc in parent ~a of ~a"
                   parent ss))
      (setf (doc-index ss) index)
      (setf (toc-index ss)
            (format nil "~a.~a" parent-toc index)))))

(defmethod set-document-index ((s section) index)
  ;; The index is a letter.
  (unless (toc-index s)
    (let* ((parent (parent s))
           (parent-toc (toc-index parent)))
      #+ignore(unless parent-toc
        (lsp-break "Null toc in parent ~a of ~a"
                   parent s))
      (setf (doc-index s) index)
      (setf (toc-index s)
            (format nil "~a.~a" parent-toc index)))))

(defmethod set-document-index ((tt title-text) index)
  (unless (toc-index tt)
    (let* ((parent (parent tt))
           (parent-toc (toc-index parent)))
      (setf (doc-index tt) index)
      (setf (toc-index tt)
            (format nil "~a.~a" parent-toc index)))))

(defmethod set-document-index ((p paragraph) (index integer))
  (unless (toc-index p)
    (let* ((parent (parent p))
           (parent-toc (toc-index parent)))
      #+ignore(unless parent-toc
        (lsp-break "Null toc in parent ~a of ~a"
                   parent p))
      (setf (doc-index p) index)
      (setf (toc-index p)
            (format nil "~a.p~a" parent-toc index)))))

(defmethod set-document-index ((p paragraph) index)
  ;; If the document has a complex abstract, the document structure
  ;; gets out of sync and thinks it is operating on a section
  ;; when it's actually got a paragraph
  (unless (toc-index p)
    (let* ((parent (parent p))
           (parent-toc (toc-index parent)))
      #+ignore(unless parent-toc
        (lsp-break "Null toc in parent ~a of ~a"
                   parent p))
      (setf (doc-index p) index)
      (setf (toc-index p)
            (format nil "~a.~a" parent-toc index)))))

(defmethod set-document-index ((s sentence) (index integer))
  (unless (toc-index s)
    (let* ((parent (parent s))
           (parent-toc (toc-index parent)))
      #+ignore(unless parent-toc
        (lsp-break "Null toc in parent ~a of ~a"
                   parent s))
      (setf (doc-index s) index)
      (setf (toc-index s)
            (format nil "~a.s~a" parent-toc index)))))


(defun location-in-article-of-current-sentence ()
  "Looks up the sentence we are presently working on
  and returns its document index. Only makes sense if
  we are working through a document that supports the
  toc classes (as above), so returns nil if we aren't"
  (declare (special *reading-populated-document*))
  (when *reading-populated-document*
    (let ((s (identify-current-sentence t)))
      (when s (toc-index s)))))
