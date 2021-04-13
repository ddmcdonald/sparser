;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2014-2019 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "no-brackets-protocol"
;;;   Module:  "drivers/chart/psp/"
;;;  version:  August 2019

;; Initiated 10/5/14, starting from the code for detecting bio-entities.
;; 10/29/14 added flags to turn off various steps so lower ones
;; could be independently tested. 11/18/14 Reflecting the decomposition
;; of the sweep into a succession of sweeps. 12/18/15 code to create trees 
;; of semantics for treetops -- collect-model-description and semantic-tts.
;; 1/11/15 Moving that code out to interface/grammar/sweep and refining 
;; how it's used. 
;; 1/12/2015 Handle circular structures in seemtree -- needed for verb+ed premodifiers, among others
;; 1.18.2015 fix collection of description of individuals when modifiers referents are categories and not individuals as in "catalytic domains"
;; 1/18/2015 code (a bit sketchy) to extract all entities and all relations after parsing a sentence -- entities-in and relations-in
;; tweaks to all-entities and all-relations. 
;; 4/16/15 Fanout from change in treatment of PPs. 
;; 1.0 4/28/15 Bumped to re-factor. 
;; 5/2/2015 update semtree to support indiv-pattern for pattern matching
;; 5/13/2015 code related to semtree that will (eventually) fin the material needed for MITRE's index cards
;;  itypes-under, process-under, individuals-under...
;; 5/25/2015 collect information to make MITRE index cards
;; 6/8/2015 Catching errors in get-string-from-local-edge-cache
;; 6/10/15 Rearranging to make globals and their management more apparent
;;  and cleaning up debugging code
;; 7/10/2015 new parameter *dont-filter-on-discourse-relevance* that turns off use of discourse relevance filtering
;; to see how many cards that has surpressed
;; 7/20/15 Tweak to note-surface-string to keep it from returning nil.

(in-package :sparser)

(defun sucessive-sweeps? ()
  "syntactic sugar for a mode detector. Cf. new-forest-protocol?"
  (eq *kind-of-chart-processing-to-do* :successive-sweeps))

;;; Sweep to introduce minimal edges over the text, one sentence
;;; at a time, covering all unary rules, polywords, word-driven
;;; fsa's (digits), no-space compositions, and word completions.
;;;   This pass over the sentence will be followed by a succession
;;; of sweeps over the edges (conclusions) of the previous one.

;; lookup-the-kind-of-chart-processing-to-do uses the keyword 
;; :successive-sweeps to call this function. The lookup fn is
;; called from chart-based-analysis where there is a catch to 
;; terminate chart parsing. 

;;;---------
;;; Globals
;;;---------

(defvar *universal-time-start*)
(defvar *universal-time-end*)

(defparameter *all-sentences* nil
  "Used in post-analysis-operations to accumulate the raw material
   that we make cards from.")

(defparameter *index-cards* nil
  "Read in post-analysis-operations as part of the guard on whether we
   collect the all sentences data.")

(defparameter *show-handled-sentence-errors* t
  "Printing the error that's caught by the handler in 
  error-trapped-scan-and-core turns out to be a significant
  time cost in CCL. This gates that operation so that 
  the error and the sentence it applies to will only be
  printed if this flag is t.")

(defparameter *trap-error-skip-sentence* nil
  "Governs whether we let errors happen. If it's nil they
  go through and cause a break. When it's T this is noticed
  in sweep-successive-sentences-from and we go through an
  error handler that suppresses the break and instead prints
  out what the error was and the text of the sentence that
  was being analyzed at the time of the error.
    Presently always set (dynamically bound) deliberately.
  Right now (6/12/15) that only happens in read-article-set.")

(defparameter *show-sentence-for-early-errors* nil
  "some errors or interesting events happen in the sentence creating sweep, 
   and we want to se the entire sentence context")


(defparameter *warn-or-error-choice* :warn) ;; :error)

(defun warn-or-error (datum &rest arguments)
  (case *warn-or-error-choice*
    (:error (apply #'error (cons datum arguments)))
    (:warn (apply #'warn (cons datum arguments)))))



;;;------------------------------------------------
;;; keeping track of the sentence we're working on
;;;------------------------------------------------

;; N.b. *current-sentence* is set by start-sentence

(defvar *sentence* nil
  "Dynamically bound by sentence-sweep-loop. Compare to
   *current-sentence* managed by the sentence creation routines
   and returned by the function sentence(). That global
   changes with successive calls to start-sentence from the
   period hook. As a result, it quickly gets ahead of the
   sentence we are working on whereas this global will not.")

(defparameter *string-from-analyze-text-from-string* nil
  "Provides analog to *sentence-in-core* when parsing protocol
   doesn't go through the document-centric code that sets that.
   Set globally by analyze-text-from-string (not dynamically bound).")

(defvar *sentence-in-core* nil
  "Set in sweep-successive-sentences-from and also in
   sentence-processing-core.")

(defvar *current-sentence-string* nil
  "Set in sweep-successive-sentences-from and retains its value
   until the next time that's called. Not dynamically bound.")

(defparameter *truncate-current-string-at* 150)

(defun current-string ()
  "Return the string for the sentence we are currently analyzing.
   Used principally to provide context in error messages.
   If we're parsing a document where 'sentences' are not identifiable
   or not even a sensible notion we can get unusably long error
   strings, so check for that and truncate the really long ones"
  (let* ((string
          (or (let ((s (identify-current-sentence :no-break)))
                (when s (sentence-string s)))
              *current-sentence-string*
              *string-from-analyze-text-from-string*
              ""))
         (length (length string)))
    (if (> length *truncate-current-string-at*)
      (string-append (subseq string 0 *truncate-current-string-at*) "...")
      string)))

(defun identify-current-sentence (&optional no-break)
  "Identify and return the sentence that the parser is operating in
   at the time it is called. This operation is complicatedd by the
   operations of the period-hook code, which starts a new sentence
   when the current sentence is terminated, which pushes the sentence
   functions like (sentence) ahead of the current point of operations.
   The special *sentence-in-core* is available when we're operating
   on whole sentences at a time, though not in other modes."
  (declare (special *sentence-in-core* *current-sentence*))
  (let ((s *sentence-in-core*)
        (current *current-sentence*))
    (cond
     ((typep s 'sentence) s)
     ((and current ;; why did we have this check?
           ;; need *current-sentence* for access in sentence-making pass
           #+ignore(null (ends-at-pos current)))
      current)
     (s (unless no-break
          (error "Odd type of object returned for sentence: ~a~%~a"
                 (type-of s) s))
        nil)
     (t (unless no-break
          (error "Need another way to find the current sentence"))
        nil))))


;;;--------
;;; Driver
;;;--------

(defun initiate-successive-sweeps ()
  "Called from lookup-the-kind-of-chart-processing-to-do which
   is the content of analysis-core after it finishes initializing.
   Handles both reading document text and reading directly from strings
   or files.
   N.b. The initialization routines created a sentence already."
  (declare (special *reading-populated-document* *paragraphs-from-orthography*
                    *sentence-making-sweep* *new-sentence* *current-paragraph*)
           (optimize debug))
  (scan-next-position) ;; pull the source-start word into the chart
  (scan-next-position) ;; adds 1st real word into the chart
  (cond
    (*reading-populated-document*
     ;; Dynamically bound by paragraph method for read-from-document
     (let ((s1 (sentence)))
       (unless (prepopulated? s1)
         ;; If the document's sentences are not already there then
         ;; we're in the pass that creates them.
         (let ((*pre-read-all-sentences* t))
           (declare (special *pre-read-all-sentences*))
           (catch 'sentences-finished
             ;; throw done by simple-eos-check
             (multiple-value-bind (eos-pos sentence)
                 (scan-sentences-and-pws-to-eos (p# 1))
               (setq *current-sentence* s1)))))
       (if *sentence-making-sweep*
           (then ;; we've done all that we need to on this pass
             ;; over the document, so move on.
             (throw 'do-next-paragraph nil))
           (else
             ;; Now do the regular loop. All the linguistic
             ;; analysis is done here. This either just returns
             ;; when it runs out of sentences or it reaches eof
             ;; and there's a thow back into the document reader
             ;;  (sweep-successive-sentences-from s1)
             ;;(terminate-chart-level-process)
             (let ((initial-sentence (sentence)))
               (multiple-value-bind (eos-pos sentence)
                   (scan-sentences-and-pws-to-eos (position# 1))
                 ;; sweep-for-polywords-to-eos calls (start-sentence) for each sentence
                 ;;  and that resets *current-sentence* -- set it back to first sentence
                 (setq *new-sentence* sentence)
                 (setq *current-sentence* initial-sentence)
                 (catch 'do-next-paragraph
                   (sweep-successive-sentences-from initial-sentence))
                 (terminate-chart-level-process)))))))
    (*paragraphs-from-orthography*
     (parse-successive-paragraphs)
     (terminate-chart-level-process))
    (t
     ;; Default path, used for string sources.
     ;; N.b. this is the identical processing sequence as document case.
     (let ((initial-sentence (sentence)))
       (multiple-value-bind (eos-pos sentence)
           (scan-sentences-and-pws-to-eos (position# 1))
         (setq *current-sentence* initial-sentence)
         (catch 'do-next-paragraph
           (sweep-successive-sentences-from initial-sentence))
         (terminate-chart-level-process))))))



(defun sweep-successive-sentences-from (sentence)
  "Called from the toplevel driver initiate-successive-sweeps
   after we have run scan-sentences-and-pws-to-eos and have
   all the sentences.
      This is the driver for looping over successive sentences.
   It returns when we get to the end of the sentence chain by
   throwing to :do-next-paragraph, which is caught by the
   toplevel driver after the scan to eos policy was introduced."
  (declare (special *trap-error-skip-sentence*)
           (optimize debug))
  (loop
     (tr :sweep-reading-sentence sentence)
     (setq *current-sentence-string* (sentence-string sentence))
     (setq *sentence-in-core* sentence
           *current-sentence* sentence)
     (when *show-sentence-for-early-errors*
       (format t "  in sentence: ~s ~%" (current-string))
       (setq *show-sentence-for-early-errors* nil))

     ;; All the post-polyword analysis is done below these
     (if *trap-error-skip-sentence*
       (error-trapped-scan-and-core sentence)
       (scan-terminals-and-do-core sentence))

     (cond ;; is there a 'next' sentence?
       ((not (slot-boundp sentence 'next))
        (throw 'do-next-paragraph nil))
       ((null (next sentence))
        ;;/// shouldn't happen. But happened in 8.a.p1 of
        ;; (run-an-article :id "PMC1702556" :corpus :jun15eval)
        ;; and the single sentence is a long list of
        ;; accession numbers in GenBank
        (throw 'do-next-paragraph nil)))
     
     (let ((next-sentence (next sentence)))
       (tr :sweep-next-sentence next-sentence)
       (when (string-equal "" (sentence-string next-sentence))
         (tr :sweep-paragraph-end)
         (throw 'do-next-paragraph nil))
       (setq sentence next-sentence))))


(defun error-trapped-scan-and-core (sentence)
  "Wrapped scan-terminals-and-do-core inside an error catch"
  ;; Modeled on code in get-bracketing-from-string and
  ;; test-np-segmentation-for-sexp
  (declare (special *show-handled-sentence-errors*))
  (handler-case 
      (scan-terminals-and-do-core sentence)
    (error (e)
      (ignore-errors ;; got an error with something printing once
       (when *show-handled-sentence-errors*
         (format t "~&Error in ~s~%~a~%~%" (current-string) e))))))

(defun scan-terminals-and-do-core (sentence)
  "Do the remaining processing of the terminals followed
   by all the sentence-level parsing"
  (declare (special *smart-frequency-count*))
  (setq *sentence-in-core* sentence) ;; note 1
  (scan-terminals-of-sentence sentence) ;; (tr :scanning-done)
  (if *smart-frequency-count*
    (do-smart-frequency-count sentence)
    (sentence-processing-core sentence))) ;; (tr :sweep-core-done)

#| Note #1  We sometimes get errors in scan-terminals-of-sentence
 so it is important for the error message routines
 to have the variable *sentence-in-core* set at this point. |#


;;;-------------------------------
;;; Shared core of the processing
;;;-------------------------------

(defun sentence-processing-core (sentence)
  "Handles all of the processing on a sentence that is done
   after scan-sentences-and-pws-to-eos and scan-terminals-loop
   have run. They handled all the polywords, filled the chart,
   introduced edges over the words, and ran any word or
   edge-level fsa's."
  (declare (special *sweep-for-patterns* *do-early-rules-sweep*
                    *grammar-and-model-based-parsing*))
  (setq *sentence-in-core* sentence)
  (possibly-print-sentence)
  
  (when *grammar-and-model-based-parsing*
    ;; This flag is T by default. It is rebound to nil
    ;; during the epistemic phase of document processing
    ;; by read-epistemic-features whose analysis is just
    ;; based on polywords.
    (when *do-early-rules-sweep*
      (do-early-rules-sweep sentence))
    (when *sweep-for-da-patterns*
      (apply-debris-analysis sentence))
    (when *sweep-for-patterns*
      (pattern-sweep sentence))
    (when *sweep-for-early-information*
      (detect-early-information sentence))
    (when *sweep-for-conjunctions*
      (short-conjunctions-sweep sentence))
    (when *sweep-for-parentheses*
      (sweep-to-span-parentheses sentence))
    (when *trace-island-driving* (tts))

    (when *chunk-sentence-into-phrases*
      (tr :identifying-chunks-in sentence)
      (identify-chunks sentence) ;; calls PTS too
      (cleanup-segment-printing-if-necessary sentence)
      (when *trace-island-driving* (tts))

      (when *parse-chunked-treetop-forest*
        (let ((*return-after-doing-forest-level* t))
          (declare (special *return-after-doing-forest-level*))
          (new-forest-driver sentence))
      
        (when *island-driving*
          (post-analysis-operations sentence)

          (when *interpret-in-context*
            (interpret-treetops-in-context (all-tts (starts-at-pos sentence)
                                                    (ends-at-pos sentence))))
          (record-sentence-model-data sentence)))))
  
    ;; EOS throws to a higher catch. If the next sentence
    ;; is empty we will hit the end of source as we
    ;; start scanning terminals and it will throw
    ;; beyond this point. 
    (end-of-sentence-processing-cleanup sentence))





;;;----------------------------------------------------
;;; operations after the regular analysis has finished
;;;----------------------------------------------------

(defun post-analysis-operations (sentence)
  "Called from sentence-processing-core once all of the parsing
   operations on the sentence have finished. Handles anaphora,
   discourse structure, data-collection for cards, and such."
  (declare (special *index-cards*))
  (when *scan-for-unsaturated-individuals*
    (sweep-for-unsaturated-individuals sentence))
  (loop for e in (all-tts (starts-at-pos sentence) (ends-at-pos sentence))
     ;; The top level fragments are maximal -- resolve binding ambiguities
     ;;  with defaults where possible
     when (and (edge-p e) (individual-p (edge-referent e)))
     do (make-maximal-projection (edge-referent e) e))
  (identify-salient-text-structure sentence)
  (when *do-anaphora*
    (unless *constrain-pronouns-using-mentions*
      ;; defer 'till interpret-treetops-in-context runs
      (handle-any-anaphora sentence)))
  (when (and *readout-relations* *index-cards*)
    (push `(,(sentence-string sentence) 
            ,(all-individuals-in-tts sentence)
            ,*current-article*
            ,(assess-relevance sentence))
          *all-sentences*))
  (save-missing-subcats)
  (when *do-discourse-relations*
    (establish-discourse-relations sentence)))
  

(defun record-sentence-model-data (sentence)
  "Calls identify-relations to collect the entities and relations 
   from each treetop in the sentence and store them on the 
   sentence object. This is separated from post-analysis-operations
   to allow it to be used when only applying low-level operations, 
   but not parsing."
  (when *collect-model*
    ;; We always retrieve the entities and relations to store
    ;; with the sentence and accumulate at higher levels
    (multiple-value-bind (relations entities tt-count treetops)
        (identify-relations sentence)
      ;; (format t "sentence: ~a~%  ~a treetops" sentence tt-count)
      (set-entities sentence entities)
      (set-relations sentence relations)
      ;;(set-mentions sentence)
      (set-tt-count sentence tt-count))))


;;;------------------------------------------------------------
;;; final operations on sentence before moving to the next one
;;;------------------------------------------------------------

(defparameter *article-sent-mentions* (make-hash-table)
  "Hash table mapping sentences in an article to hash tables that link
   individuals in a sentence to the mention(s) for those individual
   in that sentence.")

(defparameter *sentence-semantic-mentions* nil)
;; collect the non-trivial mentions in a sentence, to allow for
;; checking if the sentence semantics drops pieces of meaning

(defun semantic-mentions-in-current-sentence (sentence)
  (get-mentions sentence))

(defun end-of-sentence-processing-cleanup (sentence)
  (declare (special *current-article*
                    *end-of-sentence-display-operation*
                    *predication-links-ht*
                    *sentence-in-core*))
  (setf (sentence-mentions (contents sentence))
        (semantic-mentions-in-current-sentence sentence))
  (loop for m in (sentence-mentions (contents sentence))
        when (and (or (not (slot-boundp m 'location-in-article))
                      (null (mentioned-in-article-where m)))
                  (toc-index sentence)
                  (parent sentence))
        do
          #+ignore
          (warn "##### ----- mwention ~s without mentioned-in-article-where,~% should have ~s~%"
                m
                (cons (toc-index sentence) (parent sentence)))
          (setf (mentioned-in-article-where m)
                (cons (toc-index sentence) (parent sentence))))
                
  (when *current-article* ;; probably won't need this
    (save-article-sentence *current-article* sentence)
    (setf (gethash sentence *article-sent-mentions*)
          (let ((sent-entity-mention-ht (make-hash-table)))
            (loop for m in (mentions-in-sentence-edges sentence)
               do (push m (gethash (base-description m) sent-entity-mention-ht)))
            sent-entity-mention-ht)))
  (when *sentence-semantic-mentions*
    (setq *sentence-semantic-mentions*
          (semantic-mentions-in-current-sentence sentence)))

  (set-discourse-history sentence (cleanup-lifo-instance-list))
  (when *end-of-sentence-display-operation*
    (funcall *end-of-sentence-display-operation* sentence))
  (do-client-translations sentence)
  (clrhash *predication-links-ht*)
  sentence)

