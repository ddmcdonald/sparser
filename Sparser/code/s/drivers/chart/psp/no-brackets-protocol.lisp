;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2014-2017 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "no-brackets-protocol"
;;;   Module:  "drivers/chart/psp/"
;;;  version:  August 2017

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

;;; Sweep to introduce minimal edges over the text, one sentence
;;; at a time, covering all unary rules, polywords, word-driven
;;; fsa's (digits), no-space compositions, and word completions.
;;;   This pass over the sentence will be followed by a succession
;;; of sweeps over the edges (conclusions) of the previous one.

;; lookup-the-kind-of-chart-processing-to-do uses the keyword 
;; :successive-sweeps to call this function. The lookup fn is
;; called from chart-based-analysis where there is a catch to 
;; terminate chart parsing. 

(defun sucessive-sweeps? ()
  "syntactic sugar for a mode detector. Cf. new-forest-protocol?"
  (eq *kind-of-chart-processing-to-do* :successive-sweeps))

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
   Set globally by analyze-text-from-string (not bound).")

(defvar *sentence-in-core* nil
  "Set in sweep-successive-sentences-from and also in
   sentence-processing-core.")

(defvar *current-sentence-string* nil
  "Set in sweep-successive-sentences-from and retains its value
   until the next time that's called. Not dynamically bound.")

(defun current-string ()
  (or (let ((s (identify-current-sentence :no-break)))
        (when s (sentence-string s)))
      *current-sentence-string*
      *string-from-analyze-text-from-string*
      ""))

(defun identify-current-sentence (&optional no-break)
  "Identify and return the sentence that the parser is operating in
   at the time it is called. This operation is complicatedd by the
   operations of the period-hook code, which starts a new sentence
   when the current sentence is terminated, which pushes the sentence
   functions like (sentence) ahead of the current point of operations.
   The special *sentence-in-core* is available when we're operating
   on whole sentences at a time, though not in other modes."
  ;; called from the epistemic collector functions but could
  ;; be generally useful. 
  (let ((s *sentence-in-core*)
        (current *current-sentence*))
    (cond
     ((typep s 'sentence) s)
     ((and current
           (null (ends-at-pos current)))
      current)
     (s (unless no-break
          (error "Odd type returned for sentence: ~a~%~a"
                 (type-of s) s))
        nil)
     (t (unless no-break
          (error "Need another way to find the current sentence"))
        nil))))


;;;--------
;;; Driver
;;;--------

(defun initiate-successive-sweeps ()
  (declare (special *reading-populated-document*
                    *sentence-making-sweep* *new-sentence* *current-paragraph*)
           (optimize debug))
  ;; Called from lookup-the-kind-of-chart-processing-to-do which
  ;; is the content of analysis-core after it finishes initializing.
  ;; N.b. The initialization routines created a sentence already
  (scan-next-position) ;; pull the source-start word into the chart
  (scan-next-position) ;; adds 1st real word into the chart
  (cond
    (*reading-populated-document*
     ;; Dynamically bound by paragraph method for read-from-document
     (let ((s1 (sentence)))
       (unless (prepopulated? s1)
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
                   (scan-sentences-and-pws-to-eos (p# 1))
                 ;; sweep-for-polywords-to-eos calls (start-sentence) for each sentence
                 ;;  and that resets *current-sentence* -- set it back to first sentence
                 (setq *new-sentence* sentence)
                 (setq *current-sentence* initial-sentence)
                 (catch 'do-next-paragraph
                   (sweep-successive-sentences-from initial-sentence))
                 (terminate-chart-level-process)))
               
             ))))
    (t
     ;; default path used by p or f
     (let ((initial-sentence (sentence)))
       (multiple-value-bind (eos-pos sentence)
           (scan-sentences-and-pws-to-eos (p# 1))
         ;; sweep-for-polywords-to-eos calls (start-sentence) for each sentence
         ;;  and that resets *current-sentence* -- set it back to first sentence
         (setq *current-sentence* initial-sentence)
         (catch 'do-next-paragraph
           (sweep-successive-sentences-from initial-sentence))
         (terminate-chart-level-process))))))


;;;------------------------------------------------------
;;; "normal" processing directly from a character stream
;;;------------------------------------------------------

(defun sentence-sweep-loop ()
  "Called from initiate-successive-sweeps when reading from 
   a stream of characters rather than a pre-structured document.
   Organizes all the parsing layers from lowest to highest.
   Expects a first sentence to exist but not to be populated"
  (declare (special *current-sentence*))
  (tr :entering-sentence-sweep-loop)
  (let* ((sentence (sentence))  ;; to pass to subroutines
         (*sentence* sentence)) ;; for global reference
    (declare (special *sentence* *this-sen)
             (optimize debug))
    ;; scan through the complete string, filling in the chart
    (let ((*scanning-terminals* :polywords))
      (declare (special *scanning-terminals*))
      (scan-sentences-to-eos (starts-at-pos sentence)))
    ;;  scan-sentences-to-eos calls (start-sentence) for each sentence
    ;;  and that resets *current-sentence* -- set it back to first sentence
    (setq *current-sentence* sentence)
    (loop
      (let* ((start-pos (starts-at-pos sentence))
             (first-word (pos-terminal start-pos)))
        (unless first-word
          ;; There is a pending bug (7/16) that happens when a sentence
          ;; ends in with a polyword followed by a question mark.
          ;; Fixing the bug appears to be tied up with companion
          ;; issue where the pointers that walk the sentence in
          ;; the scan-terminals-loop are identical. First attempts
          ;; to fix that led to fallback in other polyword processing.
          (scan-next-position) ;; compensate for the bug
          (setq first-word (pos-terminal start-pos)))

        ;; 1st scan the text into minimal terminal edges.
        ;; The thow is from period-hook, which will also advance
        ;; the value returned by (sentence) to be the next sentence
        ;; after this one that we're working on. 
        (tr :scanning-terminals-of sentence)
        (catch :end-of-sentence
          (scan-terminals-loop start-pos first-word (ends-at-pos sentence)))
        (sentence-processing-core sentence)
        
        (setq sentence (next sentence))
        (when (null sentence) ;; or a sentence with a null string?
          (terminate-chart-level-process))))))


;;;-------------------------------
;;; Shared core of the processing
;;;-------------------------------

(defun sentence-processing-core (sentence)
  "Handles all of the processing on a sentence that is done
   after scan-terminals-loop runs. Called by sentence-sweep-loop
   or scan-terminals-and-do-core depending one whether we're
   working with a document or just a text stream.
    The operation just before this is scan-terminals-loop, 
   which handled polywords, fsa, no-space, and populating
   the terminal edges."
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
      (when *trace-island-driving* (tts))

      (when *parse-chunked-treetop-forest*
        (let ((*return-after-doing-forest-level* t))
          (declare (special *return-after-doing-forest-level*))
          (new-forest-driver sentence)))
        
      (repair-bad-composition sentence))

    (post-analysis-operations sentence)

    (interpret-treetops-in-context (all-tts (starts-at-pos sentence)
                                            (ends-at-pos sentence)))
    (record-sentence-model-data sentence)
  
    ;; EOS throws to a higher catch. If the next sentence
    ;; is empty we will hit the end of source as we
    ;; start scanning terminals and it will throw
    ;; beyond this point. 
    (end-of-sentence-processing-cleanup sentence)))


;;;----------------------------
;;; document-driven processing
;;;----------------------------

(defparameter *show-sentence-for-early-errors* nil
  "some errors or interesting events happen in the sentence creating sweep, 
   and we want to se the entire sentence context")

(defun scan-sentences-to-eof (first-sentence &aux (sentence first-sentence)start-pos)
  "Called from initiate-successive-sweeps when we're
   in the initial sweep phase and need to identify
   and populate the sentences of the paragraphs.
   Does scan-next-terminal and detects sentence boundaries 
   but no substantive processing. Does not return.
   We leave the loop via a throw to sentences-finished
   from simple-eos-check from inside scan-words-loop."
  (declare (special *show-sentence-for-early-errors* *current-sentence*)
           (optimize (debug 3)(speed 1)))
  (tr :start-scan-to-eof first-sentence)
  (setq *current-sentence* first-sentence)
  (lsp-break "foo")
  (loop
    (when (null sentence) (return-from scan-sentences-to-eof nil))
    (setq start-pos (starts-at-pos sentence))
    (tr :scan-to-eof-start-pos start-pos)
    (catch :end-of-sentence ;; Thrown from period-hook
      (let ((first-word (pos-terminal start-pos)))
        (unless first-word
          (scan-next-position)
          (setq first-word (pos-terminal start-pos)))
        (scan-words-loop start-pos first-word)
        (when *show-sentence-for-early-errors*
          (format t "  in sentence: ~s ~%"
                  (sentence-string sentence))
          (setq *show-sentence-for-early-errors* nil))))
    (setq sentence (next sentence))))



(defun sweep-successive-sentences-from (sentence)
  "Called from the toplevel driver initiate-successive-sweeps
   after we have done the sentence-making sweep, so this
   is only used with prepopulated documents whose sentences
   have been delimited by scan-sentences-to-eof. 
   Does all of the linguistic analysis, sentence by sentence
   until we get to the end of the sentence chain.
   This function in a document context does the same job
   as sentence-sweep-loop does for strings: apply the
   parser to successive sentences."
  (declare (special *trap-error-skip-sentence*)
           (optimize debug))
  (loop
     (tr :sweep-reading-sentence sentence)
     (setq *current-sentence-string* (sentence-string sentence))
    (setq *sentence-in-core* sentence)
    (when *show-sentence-for-early-errors*
      (format t "  in sentence: ~s ~%" (current-string))
      (setq *show-sentence-for-early-errors* nil))

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

(defun scan-terminals-and-do-core (sentence)
  ;; We sometimes get errors in scan-terminals-of-sentence
  ;;  so it is important for the error message routines
  ;;  to have the variable *sentence-in-core* set at this point
  ;;  not (just) in sentence-processing-core
  (setq *sentence-in-core* sentence)
  (scan-terminals-of-sentence sentence) ;; (tr :scanning-done)
  (sentence-processing-core sentence)) ;; (tr :sweep-core-done)

(defun error-trapped-scan-and-core (sentence)
  ;; Modeled on get-bracketing-from-string and test-np-segmentation-for-sexp
  (handler-case 
      (scan-terminals-and-do-core sentence)
    (error (e)
      (ignore-errors ;; got an error with something printing once
       (when *show-handled-sentence-errors*
         (format t "~&Error in ~s~%~a~%~%" (current-string) e))))))


;;;----------------------------------------------------
;;; operations after the regular analysis has finished
;;;----------------------------------------------------

(defun post-analysis-operations (sentence)
  "Called from sentence-processig-core once all of the parsing
   operations on the sentence have finished. Handles anaphora,
   discourse structure, data-collection for cards, and such."
  (declare (special *index-cards*))
  (when *scan-for-unsaturated-individuals*
    (sweep-for-unsaturated-individuals sentence))

  ;; the top level fragments are maximal -- resolve binding ambiguities
  ;;  with defaults where possible
  (loop for e in (all-tts (starts-at-pos sentence) (ends-at-pos sentence))
        when (and (edge-p e) (individual-p (edge-referent e)))
        do
          (make-maximal-projection (edge-referent e) e))
  (identify-salient-text-structure sentence)
  (when *do-anaphora*
    (handle-any-anaphora sentence))
  (when (and *readout-relations* *index-cards*)
    (push `(,(sentence-string sentence) 
            ,(all-individuals-in-tts sentence)
            ,*current-article*
            ,(assess-relevance sentence))
          *all-sentences*))
  (save-missing-subcats)
  (make-this-a-question-if-appropriate sentence)
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
      (set-mentions sentence)
      (set-tt-count sentence tt-count))))


;;;------------------------------------------------------------
;;; final operations on sentence before moving to the next one
;;;------------------------------------------------------------

(defparameter *indra-post-process* nil)
(defparameter *indra-embedded-post-mods* nil)

(defun end-of-sentence-processing-cleanup (sentence)
  (declare (special *current-article* *sentence-results-stream*
                    *end-of-sentence-display-operation*
                    *localization-interesting-heads-in-sentence*
                    *localization-split-sentences* *colorized-sentence*
                    *save-bio-processes*  *indra-post-process*
                    *predication-links-ht*))
  (set-discourse-history sentence (cleanup-lifo-instance-list))
  (when *end-of-sentence-display-operation*
    (funcall *end-of-sentence-display-operation* sentence))
  (when *current-article*
    (save-article-sentence *current-article* sentence))
  ;;output sentence semantics, if desired, in format specified
  ;; by *semantic-outut-format* -- code is in save-doc-semantics
  (when (and (or (eq *sentence-results-stream* t)
                 (streamp *sentence-results-stream*))
             (not (eq *semantic-output-format* :HMS-JSON)))
    (when *save-bio-processes* (save-bio-processes sentence))
    (write-semantics sentence *sentence-results-stream*))
  (when *indra-post-process*
    (let ((mentions
           ;; sort, so that embedding edges for positive-bio-control come out first
           (sort
            (remove-collection-item-mentions
             (mentions-in-sentence-edges sentence))
            #'>
            :key #'(lambda (m) (edge-position-in-resource-array (mention-source m))))))
        (indra-post-process mentions sentence *sentence-results-stream*)))
  (when *localization-interesting-heads-in-sentence*
    (let ((colorized-sentence (split-sentence-string-on-loc-heads)))
      (setf (gethash sentence *colorized-sentence*) colorized-sentence)
      (push colorized-sentence *localization-split-sentences*)))
  (clrhash *predication-links-ht*))


;;;----------------------------------
;;; diverse processing for HMS/Indra
;;;----------------------------------

(defparameter *end-of-sentence-display-operation* nil)
(defparameter *save-bio-processes* nil)

(defparameter *colorized-sentence* (make-hash-table :size 1000 :test #'equal))


(defun indra-post-process (mentions sentence output-stream)
  (setq *indra-embedded-post-mods* nil)
  (loop for mention in mentions
        do (indra-post-process-mention mention sentence output-stream)))

(defun indra-post-process-mention (mention sentence output-stream
                                   &optional
                                     (ippm-ref (base-description mention))
                                     (nec-vars? nil))
  (declare (special ippm-ref))
  (unless (member ippm-ref *indra-embedded-post-mods*)
    (let*  ((necessary-vars (necessary-vars? ippm-ref))
            (desc (if (and (c-itypep ippm-ref 'positive-bio-control)
                           (value-of 'agent ippm-ref)
                           (individual-p (value-of 'affected-process ippm-ref))
                           (itypep (value-of 'affected-process ippm-ref) 'post-translational-modification))
                      ;;e.g. "Rho induces tyrosine phosphorylation of gamma-catenin"
                      (bind-dli-variable 'agent
                                         (value-of 'agent ippm-ref)
                                         (value-of 'affected-process ippm-ref))
                      ippm-ref)))
      ;; Revise the code to 1) allow for conjoined verbs (use c-itypep)
      ;;  and follwing on that 2) allow a single mention/edge to have more
      ;;  than one type of INDRA statement (MEK phosphorylates and activates ERK"
      (when (not (eq desc ippm-ref))
        (push (value-of 'affected-process ippm-ref) *indra-embedded-post-mods*))
      (maybe-push-sem mention ippm-ref sentence necessary-vars output-stream desc nec-vars?))))

(defun necessary-vars? (Ref)
  (cond ((or (c-itypep ref 'bio-activate)
              (c-itypep ref 'bio-inactivate)
              (c-itypep ref 'inhibit)
              (c-itypep ref 'gene-transcript-express)
              (c-itypep ref 'gene-transcript-over-express)
              (c-itypep ref 'gene-transcript-under-express)
              (c-itypep ref 'gene-transcript-co-express)
              (c-itypep ref 'gene-transcript-co-over-express)
              (c-itypep ref 'transcribe))
         '(object affected-process modifier)) ;; modifier is for "p-ERK expression"

        ((and (c-itypep ref 'bio-scalar)
              (not (c-itypep ref 'sensitivity)))
         '(measured-item))
        ((c-itypep ref 'inhibit)
         '(affected-process))
        ((c-itypep ref 'site)
         '(process))
        ((and (c-itypep ref 'negative-bio-control)
              (individual-p (value-of 'affected-process ref))
              (itypep (value-of 'affected-process ref) 'post-translational-modification))
         '(agent))

        ((c-itypep ref 'bio-control)
         '(affected-process object modifier))

        
        ((or (c-itypep ref 'translocation)
             (c-itypep ref 'import)
             (c-itypep ref 'export)
             (c-itypep ref 'recruit))
         '(object moving-object moving-object-or-agent-or-object agent))
        ((c-itypep ref 'auto-phosphorylate)
         '(agent substrate))

        ((c-itypep ref 'binding)
         '(binder bindee direct-bindee))

        ((or (c-itypep ref 'post-translational-modification)
             (c-itypep ref 'methylation)
             (c-itypep ref 'site)
             ;;(c-itypep ref 'residue-on-protein)
             (and (is-basic-collection? ref)
                  (or (c-itypep (value-of 'type ref)
                                'post-translational-modification))))
         '(substrate agent-or-substrate site substrate-or-site))))

(defun maybe-push-sem (mention ref sentence necessary-vars output-stream &optional desc nec-vars?)
  (declare (special mention ref sentence necessary-vars output-stream desc))
  (if (and (is-basic-collection? ref)
           (c-itypep ref 'caused-bio-process))
      (let ((external-bindings
             (loop for b in (indiv-binds ref)
                   unless (member (var-name (binding-variable b))
                                  '(raw-text items type number))
                   collect b)))
        (declare (special external-bindings))
        ;;(lsp-break "maybe-push-sem")
        (loop for cref in (value-of 'items ref)
              do
                (indra-post-process-mention mention sentence output-stream
                                            (if external-bindings
                                                (do-external-bindings cref external-bindings)
                                                cref)
                                            (has-necessary-vars necessary-vars cref))))
      (when (or nec-vars? (has-necessary-vars necessary-vars ref))
        (push-sem->indra-post-process
         mention
         sentence
         ;; is there any variable bound to the lambda expression
         ;;   (thus a trace to containing item)
         (loop for b in (indiv-binds ref) thereis (eq (binding-value b) '*lambda-var*))
         output-stream
         desc))))

(defun do-external-bindings (i bindings)
  (loop for b in bindings
        do
          (setq i (or (bind-dli-variable (binding-variable b)
                                         (binding-value b)
                                         i)
                      i)))
  i)


(defun has-necessary-vars (necessary-vars ref)
  (loop for v in necessary-vars when  (value-of v ref)
        collect (list v (value-of v ref))))


(defun c-itypep (c super)
  (or
   (itypep c super)
   (and (is-basic-collection? c)
        (loop for item in (value-of 'items c) thereis (itypep item super)))))
              

  


(defparameter *show-indra-lambda-substitutions* nil)

(defun get-pmid ()
  (when *current-article* (symbol-name (name *current-article*))))

(defun push-sem->indra-post-process (mention sentence lambda-expansion output-stream &optional desc)
  (declare (special *indra-text* *predication-links-ht* *indra-post-process* lambda-expansion desc))
  (unless desc (setq desc (base-description mention)))
  ;;(lsp-break "push-sem->indra-post-process")
  (let* ((lambda-expansion
          (when lambda-expansion (gethash desc *predication-links-ht*)))
         (desc-sexp (sem-sexp desc))
         (subst-desc-sexp
          (when lambda-expansion
            (subst (sem-sexp (gethash desc *predication-links-ht*))
                   '*lambda-var*
                   (sem-sexp desc))))
         (f `(,(retrieve-surface-string (mention-source mention))
               ,(cond (subst-desc-sexp
                       (when *show-indra-lambda-substitutions*
                         (pprint `(,desc-sexp ===> ,subst-desc-sexp))
                         (terpri))
                       subst-desc-sexp)
                      (t desc-sexp))
               (TEXT ,(if (and (boundp '*indra-text*)
                               (stringp (eval '*indra-text*)))
                          (eval '*indra-text*)
                          (sentence-string sentence))))))
    (push f *indra-post-process*)))

(defun contains-atom (atom list-struct)
  (if (not (consp list-struct))
      (eq atom list-struct)
      (loop for item in list-struct
            thereis (contains-atom atom item))))

(defun contains-list (l list-struct)
  (when (consp list-struct)
    (or (equal l list-struct)
        (loop for item in list-struct
              thereis (contains-list l item)))))

(defun contains-string (string list-struct)
  (if (not (consp list-struct))
      (equal string list-struct)
      (loop for item in list-struct
              thereis (contains-string string item))))
