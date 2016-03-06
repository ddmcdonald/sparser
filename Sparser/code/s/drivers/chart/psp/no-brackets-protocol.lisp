;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2014-2015 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "no-brackets-protocol"
;;;   Module:  "drivers/chart/psp/"
;;;  version:  1.0 July 2015

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

;; 6/28/2015 The *missing-subcats* parameter, when non-null causes the saving of all cases where a PP 
;; is not absorbed by a preceding NP or VP

(defparameter *missing-subcats* '(()))


(defun sucessive-sweeps? ()
  ;; syntactic sugar for a mode detector. Cf. new-forest-protocol?
  (eq *kind-of-chart-processing-to-do* :successive-sweeps))

;;;---------
;;; Globals
;;;---------

(defvar *universal-time-start*)
(defvar *universal-time-end*)

;;parameters controlling the collection of information for MITRE index cards
(defparameter *all-sentences* nil)
(defparameter *index-cards* t)

(defparameter *show-handled-sentence-errors* t
  "Printing the error that's caught by the handler in 
  error-trapped-scan-and-core turns out to be a significant
  time cost in CCL. This gates that operation so that 
  the error and the sentence it applies to will only be
  printed if this flag is t.")


(defparameter *trap-error-skip-sentence* nil
  "Governs whether we let errors happen. If it's nill they
  go through and cause a break. When it's T this is noticed
  in sweep-successive-sentences-from and we go through an
  error handler that suppresses the break and instead prints
  out what the error was and the text of the sentence that
  was being analyzed at the time of the error.
    Presently always set (dynamically bound) deliberately.
  Right now (6/12/15) that only happens in read-article-set.")
 

;; N.b. *current-sentence* is set by start-sentence

(defvar *sentence* nil
  "Dynamically bound by sentence-sweep-loop. Compare to
   *current-sentence* managed by the sentence creation routines
   and returned by the function sentence(). That global
   changes with successive calls to start-sentence from the
   period hook. As a result, it quickly get ahead of the
   sentence we are working on whereas this global will not.")

(defvar *current-sentence-string* nil
  "Set in sweep-successive-sentences-from and retains its value
   until the next time that's called. Not dynamically bound.")
(defun current-string ()
  *current-sentence-string*)

(defvar *sentence-in-core* nil
  "Set in sweep-successive-sentences-from and also in
   sentence-processing-core.")

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
     (s (error "Odd type returned for sentence: ~a~%~a"
               (type-of s) s))
     (t
      (unless no-break
        (break "Need another way to find the current sentence"))))))


;;;--------
;;; Driver
;;;--------

(defun initiate-successive-sweeps ()
  (declare (special *reading-populated-document*
                    *sentence-making-sweep*))
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
            (scan-sentences-to-eof s1))))

      (if *sentence-making-sweep*
        (then ;; we've done all that we need to on this pass
          ;; over the document, so move on.
          (throw 'do-next-paragraph nil))
        (else
          ;; Now do the regular loop. All the linguistic
          ;; analysis is done here. This either just returns
          ;; when it runs out of sentences or it reaches eof
          ;; and there's a thow back into the document reader
          (sweep-successive-sentences-from s1)))))
   (t
    ;; default path used by p or f
    (sentence-sweep-loop))))


;;;------------------------------------------------------
;;; "normal" processing directly from a character stream
;;;------------------------------------------------------

(defun sentence-sweep-loop ()
  ;; Called from initiate-successive-sweeps when reading from 
  ;; a stream of characters
  (tr :entering-sentence-sweep-loop)
  (let* ((sentence (sentence)) ;; to pass to subroutines
         (*sentence* sentence)) ;; for global reference
    (declare (special *sentence*))
    (loop
      (let* ((start-pos (starts-at-pos sentence))
             (first-word (pos-terminal start-pos)))
        ;; 1st scan the text into minimal terminal edges.
        ;; The thow is from period-hook, which will also advance
        ;; the value returned by (sentence) to be the next sentence
        ;; after this one that we're working on. 
        (tr :scanning-terminals-of sentence)
        (catch :end-of-sentence
          (scan-terminals-loop start-pos first-word))
        (sentence-processing-core sentence)
        (setq sentence (next sentence))))))


;;;-------------------------------
;;; Shared core of the processing
;;;-------------------------------

(defun sentence-processing-core (sentence)
  ;; Handles all of the processing on a sentence that is done
  ;; after scan-terminals-loop runs.
  (declare (special *sweep-for-patterns*))
  (setq *sentence-in-core* sentence)
  (possibly-print-sentence)
  
  (when *sweep-for-patterns*
    (pattern-sweep sentence)
    (short-conjunctions-sweep sentence) ;; precede parens
    (sweep-to-span-parentheses sentence)
    (when *trace-island-driving* (tts))

    (when *chunk-sentence-into-phrases*
      (tr :identifying-chunks-in sentence)
      (identify-chunks sentence) ;; calls PTS too
      (when *trace-island-driving* (tts))

      (when *parse-chunked-treetop-forest*
        (let ((*return-after-doing-forest-level* t))
          (declare (special *return-after-doing-forest-level*))
          (new-forest-driver sentence))))
        
    (post-analysis-operations sentence))
  
  ;; EOS throws to a higher catch. If the next sentence
  ;; is empty we will hit the end of source as we
  ;; start scanning terminals and it will throw
  ;; beyond this point. 
  (end-of-sentence-processing-cleanup sentence))


;;;----------------------------
;;; document-driven processing
;;;----------------------------

(defun scan-sentences-to-eof (first-sentence)
  ;; Called from initiate-successive-sweeps when we're
  ;; in the initial sweep phase and need to identify
  ;; and populate the sentences of the paragraphs.
  ;; Does scan-next-terminal and detects sentence boundaries 
  ;; but no substantive processing.
  (tr :start-scan-to-eof first-sentence)
  (let ((sentence first-sentence))
    (loop
      (let* ((start-pos (starts-at-pos sentence))
             (first-word (pos-terminal start-pos)))
        (tr :scan-to-eof-start-pos start-pos)
        (catch :end-of-sentence
          (scan-words-loop start-pos first-word))
        (setq sentence (next sentence))))))

(defun sweep-successive-sentences-from (sentence)
  ;; Used with prepopulated documents after the sentences
  ;; have been delimited by scan-sentences-to-eof. 
  ;; Does all of the linguistic analysis, sentence by sentence
  ;; until we get to the end of the sentence chain.
  (declare (special *trap-error-skip-sentence*))
  (loop
    (tr :sweep-reading-sentence sentence)
    (setq *current-sentence-string* (sentence-string sentence))
    (setq *sentence-in-core* sentence)

    (if *trap-error-skip-sentence*
      (error-trapped-scan-and-core sentence)
      (scan-terminals-and-do-core sentence))

    (unless (slot-boundp sentence 'next)
      (throw 'do-next-paragraph nil))
    (let ((next-sentence (next sentence)))
      (tr :sweep-next-sentence next-sentence)
      (when (string-equal "" (sentence-string next-sentence))
        (tr :sweep-paragraph-end)
        (throw 'do-next-paragraph nil))
      (setq sentence next-sentence))))

(defun scan-terminals-and-do-core (sentence)
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
  (when *scan-for-unsaturated-individuals*
    (sweep-for-unsaturated-individuals sentence))
  (identify-salient-text-structure sentence)
  (when *do-anaphora*
    (handle-any-anaphora sentence))
  (when (and *readout-relations* *index-cards*)
    (push `(,(sentence-string sentence) 
            ,(all-individuals-in-tts sentence)
            ,@(when *current-article*
                `(,*current-article*
                  ,*universal-time-start*
                  ,*universal-time-end*))
            ,(assess-relevance sentence))
          *all-sentences*))

  (save-missing-subcats)

  ;; We always retrieve the entities and relations to store
  ;; with the sentence and accumulate at higher levels
  (multiple-value-bind (relations entities tt-count)
      (identify-relations sentence)
    ;; (format t "sentence: ~a~%  ~a treetops" sentence tt-count)
    (set-entities sentence entities)
    (set-relations sentence relations)
    (set-tt-count sentence tt-count))

  (when *do-discourse-relations*
    (establish-discourse-relations sentence)))



;;;------------------------------------------------------------
;;; final operations on sentence before moving to the next one
;;;------------------------------------------------------------

(defun end-of-sentence-processing-cleanup (sentence)
  (declare (special sentence))
  (set-discourse-history sentence (cleanup-lifo-instance-list))
  (when *current-article*
    (save-article-sentence *current-article* sentence))
  ;;(lsp-break "end of sentence")
  ;; we could do a tts 
  #+ignore(when *readout-segments-inline-with-text* ;; be quiet when others are
    (format t "~&--------------------------~%~%")))



;;;---------------------------------------------------------------------

(defun save-missing-subcats ()
  (declare (special category::pp))
  (when *missing-subcats*
    (let* ((ee (reverse (all-tts))) 
           (pp-pairs 
            (loop for e on ee by #'cddr 
              when 
              (and (edge-p (car e))
                   (eq category::pp (edge-form (car e)))
                   (cdr e) 
                   (edge-p (second e))
                   (or (vp-category? (second e) )(noun-category? (second e))))
              collect 
              (list (edge-category (second e))
                    (value-of 'prep (edge-referent (car e)))
                    (value-of 'pobj (edge-referent (car e)))
                    (actual-characters-of-word (pos-edge-starts-at (second e))
                                               (pos-edge-ends-at (second e)) nil)
                    (actual-characters-of-word (pos-edge-starts-at (car e))
                                               (pos-edge-ends-at (car e)) nil)))))
      (setq *missing-subcats*
            (nconc pp-pairs *missing-subcats*)))))

(defun write-missing-subcats (outfile)
  (let
      ((missing
        (loop for l in *missing-subcats* 
          when (consp l)
          collect 
          `(,(simple-label (car l)) ,(simple-label (second l)) ,@(cddr l)))))
    (with-open-file (s outfile
                       :direction :output
                       :if-exists :overwrite
                       :if-does-not-exist :create)
      (np missing s))))
  

  


;;;-----------------------
;;; identifying relations
;;;-----------------------

;; (setq *readout-relations* nil)
;; (identify-relations *sentence*)

(defvar *relations* nil
  "Holds the relations for the last sentence when *readout-relations* is up")
(defvar *entities* nil
  "Holds the entities for the last sentence when *readout-relations* is up")


(defun identify-relations (sentence)
  ;; sweep over every treetop in the sentence and look at
  ;; their referents. For all sensible cases recursively
  ;; examine the object and tally the entities and relations.
  ;; N.b. this sweep is based on collect-model, which is
  ;; defined in interface/grammar/sweep.lisp
  (setq *relations* nil
        *entities* nil)
  (let* ((start-pos (starts-at-pos sentence))
         (end-pos (ends-at-pos sentence))
         (rightmost-pos start-pos)
         (tt-count 0)
         raw-entities  raw-relations  tt-contents
         treetop  referent  pos-after    )
    (when nil
      ;; add a space to separate these traces from the
      ;; summary that was just printed
      (format t "~%"))

    ;; modeled on sweep-sentence-treetops
    (loop
      (multiple-value-setq (treetop pos-after) ;; multiple?
        (next-treetop/rightward rightmost-pos))
      
      (incf tt-count)
      (when nil
        (format t "~&[relations] tt = ~a~%" treetop))

      (when (edge-p treetop)
        (setq referent (edge-referent treetop))

        (when referent
          (initalize-model-collection)
          (setq tt-contents (collect-model referent))

          (loop for item in tt-contents
            do (if (or (subject-variable item)
                       (individual-p item))
                 (push item raw-relations)
                 (pushnew item raw-entities)))))

      (when (eq pos-after end-pos)
        (return))
      (when (position-precedes end-pos pos-after)
        ;; we overshot somehow
        (return))
      (setq rightmost-pos pos-after))

    ;; (push-debug `(,raw-entities ,raw-relations))
    ;; (setq raw-entities (car *) raw-relations (cadr *))
    ;; (strip-model-descriptions raw-relations)
    ;; (break "debug strip model")

    (let ((relations (strip-model-descriptions raw-relations))
          (entities (strip-model-descriptions raw-entities)))
      (values relations
              entities
              tt-count))))



;;;---------------------------
;;; Helper code for the cards
;;;---------------------------

(defun all-individuals-in-tts (sentence)
  ;; This used to both walk the treetops to identify
  ;; all of the individuals that they references 
  ;; and also recurd their surface strings.
  ;; Now it just does the walk and the strings
  ;; are recorded by the call to note-surface-string in complete/hugin.
  (let ((individuals nil)
        (start-pos (starts-at-pos sentence))
        (end-pos (ends-at-pos sentence)))
    (loop for tt in (all-tts start-pos end-pos)
      do (loop for i in (individuals-under tt)
           when (itypep i 'biological)
           do (pushnew i individuals)))
;;    (loop for i in individuals
;;      do (store-surface-string i))
    (reverse individuals)))

(defun note-surface-string (edge)
  ;; Called on every edge from complete-edge/hugin
  ;; Record the surface string from the span dictated 
  ;; by the edge. 
  (declare (special *surface-strings*))
  (let ((referent (edge-referent edge)))
    (when (and referent (individual-p referent))
      (let* ((start-pos (pos-edge-starts-at edge))
             (end-pos (pos-edge-ends-at edge))
             (start-index (pos-character-index start-pos))
             (end-index (pos-character-index end-pos)))
        #| Too noisy. Digit sequences typically have
        a null end-index for reasons as yet unexplored
        (unless start-index
          (format t "~&>>> Null start-index: ~a~%~%" edge))
        (unless end-index
          (format t "~&>>> Null end-index: ~a~%~%" edge)) |#

        (if (and start-index end-index)
          ;; need both indices to extract the string
          (let ((string (extract-string-from-char-buffers 
                         start-index end-index)))
            (when nil
              (format t "~&Suface string for ~a set to ~s on e~a~%"
                      referent string 
                      (edge-position-in-resource-array edge)))
            (setf (gethash referent *surface-strings*)
                  string))

          (setf (gethash referent *surface-strings*) ""))))))



(defparameter *surface-strings* (make-hash-table :size 10000))

;; OBE ??? Or part of a last-resort strategy. 
;; No longer called from all-individuals-in-tts
(defun store-surface-string (i)
  (setf (gethash i *surface-strings*)
    (get-surface-string-for-individual i)))

(defun retrieve-surface-string (i)
  (gethash i *surface-strings*))

(defun get-surface-string-for-individual (i)
  ;; Most all entities should have gotten their surface string
  ;; recorded when their edge passed through complete. 
  ;; This provides a minimal value for the others.
  (let ((name (value-of 'name i)))
    (if name
      (etypecase name
        (string name)
        (word (word-pname name))
        (polyword (pw-pname name)))
      (format nil "~s" i))))




;;--------- dregs of another scheme for getting 
;; surface strings  --- Review and flush.

#+ignore
(defun get-surface-string-from-locally-recorded-edge (edges)
  (let ((edge (car edges))) 
    ;; ignoring possibility of mulitple mentions at least for now
    (let* ((start-pos (pos-edge-starts-at edge))
           (end-pos (pos-edge-ends-at edge))
           (start-index (pos-character-index start-pos))
           (end-index (pos-character-index end-pos)))
      (unless (and start-index end-index)
        (error "Some position index is null"))
      (extract-string-from-char-buffers 
       start-index end-index))))

#+ignore
(defun get-surface-string-from-discourse-entry (i)
  ;; N.b. depends on the dicourse entries being current
  ;; and tacitly assumes that there's only one mention
  ;; of an individual in the region being looked at
  ;; or that their spelling (surface string) in those two
  ;; mentions is identical.
  (let ((entry (individuals-discourse-entry i)))
    (when entry
      (let* ((most-recent (second entry))
             (start (car most-recent))
             (end (cdr most-recent)))
        (when (and (position-p start) (position-p end))
          (let ((start-index (pos-character-index start))
                (end-index (pos-character-index end)))
            (push-debug `(,start-index ,end-index ,i)) 
            (extract-string-from-char-buffers 
             start-index end-index)))))))

;;;------------------------------------
;;; collectors for semtree and friends
;;;------------------------------------

(defun tts-semantics ()
  (loop for edge in (all-tts) #+ignore (cdr (all-tts)) 
    when (and (edge-p edge) 
              (not (word-p (edge-referent edge))))
    collect (semtree (edge-referent edge))))

(defun tts-edge-semantics ()
  (loop for edge in (all-tts) #+ignore (cdr (all-tts)) 
    when (and (edge-p edge) 
              (not (word-p (edge-referent edge))))
    collect (list edge
                  (semtree (edge-referent edge)))))

(defun all-entities (&optional (trees (tts-semantics)))
    (loop for st in trees
    append
    (entities-in st)))

(defun entities-in (tree)
  (let
      (entities)
    (when
        (consp tree)
      (if
       (and
        (not (consp (car tree)))
        (entity-p (car tree)))
       (push (car tree) entities))
      (loop for binding in (cdr tree)
        do
        (setq entities 
              (append 
               (entities-in (second binding))
               entities))))
    entities))

(defun all-relations (&optional (trees (tts-semantics)))
  (extend-relations
   (loop for rel in (all-rels trees)   
     when (cdr rel)
     collect rel)))

(defun all-rels (&optional (trees (tts-semantics)))
  (loop for st in trees
    append
    (loop for rel in 
      (relations-in st)
      when (cdr rel)
      collect rel)))

(defun extend-relations (relations)
  (let
      ((alist1
        (loop for r in relations 
          when (is-bio-entity? r)
          collect
          `(cons (second (second r)) (second (third r)))))
       (alist2
        (loop for r in relations 
          when (is-bio-entity? r)
          collect
          (cons (second (third r)) (second (second r))))))
    
    (remove-duplicates
     (append relations
             (sublis 
              alist1
              (loop for r in relations unless (is-bio-entity? r) collect r ))
             (sublis 
              alist2
              (loop for r in relations unless (is-bio-entity? r) collect r )))
     :test #'equalp)))

(defun is-bio-entity? (r)
  (and (individual-p (car r))
       (itypep (car r) 'is-bio-entity)
       (cddr r)))

(defun relations-in (tree)
  (let (relations)
    (when (and (consp tree)
               (not (eq 'collection (car tree))))
      (if
       (and
        (not (consp (car tree)))
        (not (entity-p (car tree))))
       (push (extract-relation tree) relations))
      (loop for binding in (cdr tree)
        do
        (setq relations
              (append 
               (relations-in (second binding))
               relations))))
    relations))

(defun extract-relation (rel)
  `(,(car rel)
    .,(loop for binding in (cdr rel) 
        collect 
        `(,(car binding) 
          ,(if (consp (second binding)) 
             (if (consp (car (second binding)))
               (second (car (second binding)))
               (car (second binding)))
             (second binding))))))


;; THIS NEEDS TO BE REFINED
(defun entity-p (e)
  (and
   (individual-p e)
   (not (subject-variable e))
   (not (itypep e 'bio-process))
   (not (itypep e 'predicate))
   (not (itypep e 'is-bio-entity))))

(defun itypes-under (x type)
  (loop for i in (individuals-under x)
    when (itypep i type)
    collect i))

(defun processes-under (x)
  (itypes-under x 'bio-process))


(defun individuals-under (x)
  (declare (special *semtree-seen-individuals*))
  (let ((indivs nil))
    (semtree x)
    (maphash #'(lambda (l h)
                 (declare (ignore h))
                 (push l indivs))
             *semtree-seen-individuals*)
    indivs))


;;----- semtree methods

(defmethod semtree ((x null) &optional short)
  (declare (ignore short))
  nil)

(defmethod semtree ((w word) &optional short)
  (declare (ignore short))
  nil)

(defmethod semtree ((n number) &optional (short nil))
  (semtree (e# n) short))

(defmethod semtree ((e edge) &optional (short nil))
  (semtree (edge-referent e) short))


(defparameter *semtree-seen-individuals* (make-hash-table)
  "Cleared and used by semtree to avoid walking through the
  same individual twice and getting into a loop.")

(defmethod semtree ((i individual) &optional (short nil))
  (clrhash *semtree-seen-individuals*)
  (collect-model-description i short))

(defmethod semtree ((i referential-category) &optional (short nil))
  (clrhash *semtree-seen-individuals*)
  (collect-model-description i short))


;;----- collect-model-description mentods

(defmethod collect-model-description ((cat category) &optional (short t))
  (declare (ignore short))
  (list cat))

(defmethod collect-model-description ((str string) &optional (short t))
  (declare (ignore short))
  (list str))


(defmethod collect-model-description ((w word) &optional (short t))
  (declare (ignore short))
  (word-pname w))

(defmethod collect-model-description ((w polyword) &optional (short t)) ;
  (declare (ignore short))
  (pw-pname w))

(defmethod collect-model-description ((cal cons) &optional (short t))
  `(collection :members 
               (,@(loop for l in cal 
                    collect (collect-model-description l short)))))     

(defmethod collect-model-description ((i individual) &optional (short t))
  (cond
   ((gethash i *semtree-seen-individuals*)
    (list (list "!recursion!" i)))
   ((and
     (itypep i 'number)
     (not (itypep i 'ordinal)))
    (if (itypep i 'collection)
     (value-of 'items i)
     (value-of 'value i)))
   ((and (itypep i 'protein-family) ;; get rid of bio-family -- misnamed...
         (not (itypep i 'collection)))
    (if (and nil short)
     `(,i)
     (let ((bindings (indiv-binds i))
           (desc (list i)))
        (declare (special bindings desc))
        (append
         desc
         (loop for b in bindings 
           unless (member (var-name (binding-variable b))
                          '(members count ras2-model))
           collect
           (list (var-name(binding-variable b))
                 (collect-model-description (binding-value b) short)))))))
   (t  
    (let ((bindings (indiv-binds i))
          (desc (list i)))
      (setf (gethash i *semtree-seen-individuals*) t)
      ;; Had been restricting the recursion to types with
      ;; a subject variable: (subject-variable type), 
      ;; but that's missing interesting noun phrase referents.
      (dolist (b bindings)
        (let ((var (binding-variable b))
              (value (binding-value b)))
          (unless (or (memq (var-name var)
                            '(trailing-parenthetical category ras2-model))
                      (typep value 'mixin-category)) ;; has-determiner
            (cond
             ((or (numberp value)
                  (symbolp value)
                  (stringp value))
              (push (list (var-name var) value) desc))
             (t
              (typecase value
                (individual 
                 (if (itypep value 'prepositional-phrase)
                  (push (list (var-name var) ; 
                              (collect-model-description
                               (value-of 'pobj value)
                               short))
                        desc)
                  (push (list (var-name var)
                              (collect-model-description value short))
                        desc)))
                (word)
                (polyword)
                (category
                 (push (list (var-name var)
                             (collect-model-description value short))
                       desc))
                (cons
                 (push
                  (list (var-name var)
                        `(collection 
                          (:members 
                           (,@(loop for item in value 
                                collect (collect-model-description item short))))))
                  desc))
                (rule-set) ;; the word "anti" presently does this
                ;; because the fix to bio-pair isn't in yet (ddm 6/9/15)
                (otherwise
                 (push-debug `(,value ,b ,i))
                 ;;(break "Unexpected type of value of a binding: ~a" value)
                 (format t "~&~%Collect model: ~
                            Unexpected type of value of a binding: ~a~%~%" value))))))))
      
      (reverse desc)))))


;;;--------------------
;;; save the sentences
;;;--------------------

(defparameter *print-sentences* nil)

(defun possibly-print-sentence ()
  (declare (special *sentence-in-core* *print-sentences*))
  (when (numberp *print-sentences*)
    (format t "~&~&*** (p ~s) ;; ~s" 
            (sentence-string *sentence-in-core*) 
            (incf *print-sentences*))))



