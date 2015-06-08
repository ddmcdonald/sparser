;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2014-2015 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "no-brackets-protocol"
;;;   Module:  "drivers/chart/psp/"
;;;  version:  1.0 April 2015

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

(in-package :sparser)

(defvar *universal-time-start*)
(defvar *universal-time-end*)

;;parameters controlling the collection of information for MITRE index cards
(defparameter *all-sentences* nil)
(defparameter *index-cards* t)

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
  ;; syntactic sugar for a mode detector. Cf. new-forest-protocol?
  (eq *kind-of-chart-processing-to-do* :successive-sweeps))

(defvar *sentence* nil
  "Locally managed by sentence-sweep-loop. Compare to
   *current-sentence* managed by the sentence creation routines.")

;;;--------
;;; Driver
;;;--------

(defun initiate-successive-sweeps ()
  (declare (special *reading-populated-document*
                    *sweep-for-terminals*))
  ;; Called from lookup-the-kind-of-chart-processing-to-do which
  ;; is the content of analysis-core after it finishes initializing.
  ;; N.b. The initialization routines created a sentence already
  (scan-next-position) ;; pull the source-start word into the chart
  (scan-next-position) ;; adds 1st real word into the chart
  (cond
   (*reading-populated-document*
    (let ((s1 (sentence)))
      (push-debug `(,s1)) 
      ;; first accumulate all the sentences
      (unless (prepopulated? s1)
        (let ((*pre-read-all-sentences* t))
          (declare (special *pre-read-all-sentences*))
          ;;/// fold in *collect-new-words* for the words pass
          (catch 'sentences-finished
            (scan-sentences-to-eof s1))))
      ;;(push-debug `(,s1)) (break "prepopulated sentences")
      (if *sweep-for-terminals*
        ;; Now do the regular loop. All the linguistic
        ;; analysis is done here. This either just returns
        ;; when it runs out of sentences or it reaches eof
        ;; and there's a thow back into the document reader
        (sweep-successive-sentences-from s1)
        (else
          ;; otherwise we're finished with the paragraph
          (throw 'do-next-paragraph nil)))))
   (t   
    (sentence-sweep-loop))))


;;;------------------------------------------------------
;;; "normal" processing directly from a character stream
;;;------------------------------------------------------

(defun sentence-sweep-loop ()
  ;; Called from initiate-successive-sweeps when reading from 
  ;; a stream of characters
  (tr :entering-sentence-sweep-loop)
  (let ((sentence (sentence)))
    (clear-local-edge-referent-pair-cache)
    (setq *sentence* sentence) ;; if we wait it will be the next sentence
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

(defvar *sentence-in-core* nil)

(defun sentence-processing-core (sentence)
  ;; Handles all of the processing on a sentence that is done
  ;; after scan-terminals-loop runs.
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

; (trace-prepopulation)

(defun scan-sentences-to-eof (first-sentence)
  ;; Called from initiate-successive-sweeps when reading 
  ;; a prepoulated document. Does scan-next-terminal 
  ;; and detects sentence boundaries but no substantive
  ;; processing. 
  (clear-local-edge-referent-pair-cache)
  (tr :start-scan-to-eof first-sentence)
  (let ((sentence first-sentence))
    (loop
      (let* ((start-pos (starts-at-pos sentence))
             (first-word (pos-terminal start-pos)))
        (tr :scan-to-eof-start-pos start-pos)
        (catch :end-of-sentence
          (scan-words-loop start-pos first-word))
        (setq sentence (next sentence))))))

(defvar *current-sentence-string* nil)
(defun current-string ()
  *current-sentence-string*)

(defparameter *trap-error-skip-sentence* nil
  "Governs whether we let error happen")

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
      (format t "~&Error in ~s~%~a~%~%" (current-string) e))))
           

;;;----------------------------------------------------
;;; operations after the regular analysis has finished
;;;----------------------------------------------------

(defvar *relations* nil
  "Holds the relations for the last sentence when *readout-relations* is up")
(defvar *entities* nil
  "Holds the entities for the last sentence when *readout-relations* is up")

(defun post-analysis-operations (sentence)
  (declare (special *universal-time-start* *universal-time-end*))
  
  (when *scan-for-unsaturated-individuals*
    (sweep-for-unsaturated-individuals sentence))
  (identify-salient-text-structure sentence)
  (when *do-anaphora*
    (handle-any-anaphora sentence))
  
  (when *readout-relations*
    (cond
     (*index-cards*
      (set-entities sentence 
                    (all-individuals-in-tts sentence))
      (push `(,(sentence-string sentence) 
              ,(all-individuals-in-tts sentence)
              ,@(when (and (boundp '*current-article*)
                           *current-article*)
                  (list *current-article*
                        *universal-time-start*
                        *universal-time-end*)))
            
            *all-sentences*))
     (t
      (multiple-value-bind (relations entities)
                           (identify-relations sentence)
        (set-entities sentence entities)
        (set-relations sentence relations)
        (setq *relations* relations  ; (readout-relations relations)
              *entities* entities))) ; (readout-entities entities)
     ;;(ccl::break "all-sentences*") 
     )))
     
;;;------------------------------------------------------------
;;; final operations on sentence before moving to the next one
;;;------------------------------------------------------------

(defun end-of-sentence-processing-cleanup (sentence)
  (set-discourse-history sentence (cleanup-lifo-instance-list))
  ;; we could do a tts 
  #+ignore(when *readout-segments-inline-with-text* ;; be quiet when others are
    (format t "~&--------------------------~%~%")))


  


;;;-----------------------
;;; identifying relations
;;;-----------------------

;; (setq *readout-relations* nil)
;; (identify-relations *sentence*)

(defun identify-relations (sentence)
  ;; sweep over every treetop in the sentence and look at
  ;; their referents. For all sensible cases recursively
  ;; examine the object and tally the entities and relations.
  ;;/// when we do discourrse add these to the sentence object
  (setq *relations* nil
        *entities* nil)
  (let* ((start-pos (starts-at-pos sentence))
         (end-pos (ends-at-pos sentence))
         (rightmost-pos start-pos)
         entities  relations  tt-contents
         treetop  referent  pos-after    )
    (when nil
      ;; add a space to separate these traces from the
      ;; summary that was just printed
      (format t "~%"))

    ;; modeled on sweep-sentence-treetops
    (loop
      (multiple-value-setq (treetop pos-after) ;; multiple?
        (next-treetop/rightward rightmost-pos))

      (when nil
        (format t "~&[relations] tt = ~a~%" treetop))

      (when (edge-p treetop)
        (setq referent (edge-referent treetop))

        (when referent
          (initalize-model-collection)
          (setq tt-contents (collect-model referent))

          (loop for item in tt-contents
            do (if (subject-variable item)
                 (push item relations)
                 (pushnew item entities)))))

      (when (eq pos-after end-pos)
        (return))
      (when (position-precedes end-pos pos-after)
        ;; we overshot somehow
        (return))
      (setq rightmost-pos pos-after))

    (values relations
            entities)))



;;;---------------------------
;;; Helper code for the cards
;;;---------------------------

(defparameter *surface-strings* (make-hash-table :size 10000))

#| Keep original for reference
(defun all-individuals-in-tts(sentence)
  (let
      ((indivs nil)
       (start-pos (starts-at-pos sentence))
       (end-pos (ends-at-pos sentence)))
    (loop for tt in (all-tts start-pos end-pos)
      do
      (loop for i in (individuals-under tt)
        when (itypep i 'biological)
        do (pushnew i indivs)))
    (loop for i in indivs
      do (store-surface-string i))
    (reverse indivs)))
|#
#|  version two
(defun all-individuals-in-tts (sentence)
  ;; Does double duty. It walks the treetops to identify
  ;; all of the individuals they reference, and it also
  ;; records the surface string of each individual at
  ;; the same time.
  (let ((individuals nil)
        (i-edge-pairs nil)
        (start-pos (starts-at-pos sentence))
        (end-pos (ends-at-pos sentence)))
    (loop for tt in (all-tts start-pos end-pos)
      do (loop for pair in (individuals-under/record-edge tt)
           do (push pair i-edge-pairs)
           with i = (car pair)
           when (itypep i 'biological)
           do (pushnew pair individuals)))
    (loop for pair in i-edge-pairs
      do (store-surface-string pair))
    (reverse individuals)))
|#

;; Version three
(defun all-individuals-in-tts (sentence)
  ;; Does double duty. It walks the treetops to identify
  ;; all of the individuals they reference, and it also
  ;; records the surface string of each individual at
  ;; the same time.
  (let ((individuals nil)
        (start-pos (starts-at-pos sentence))
        (end-pos (ends-at-pos sentence)))
    (loop for tt in (all-tts start-pos end-pos)
      do (loop for i in (individuals-under tt)
           when (itypep i 'biological)
           do (pushnew i individuals)))
    (loop for i in individuals
      do (store-surface-string i))
    (reverse individuals)))

(defun store-surface-string (i)
  (setf (gethash i *surface-strings*)
        (get-surface-string-for-individual i)))

;; version 3
(defun get-surface-string-for-individual (i)
  (or ;; fall through to progressively weaker string sources
   ;; if the strong source returns nil or we're not a protein
   (when (itypep i 'protein)
     (get-string-from-local-edge-cache i))
   (let ((name (value-of 'name i)))
     (if name
       (etypecase name
         (string name)
         (word (word-pname name))
         (polyword (pw-pname name)))
       (format nil "~s" i)))))

(defvar *local-edge-referent-pair-cache* (make-hash-table))

(defun clear-local-edge-referent-pair-cache ()
  (clrhash *local-edge-referent-pair-cache*))

(defun cache-local-edge-referent-pair (edge)
  (let ((referent (edge-referent edge)))
    (when referent
      (when (individual-p referent)
        ;;  (format t "~&caching ~a for ~a~%" edge referent)
        (setf (gethash referent *local-edge-referent-pair-cache*)
              edge)))))

(defmethod get-local-edge-cache-entry ((i individual))
  (gethash i *local-edge-referent-pair-cache*))

(defmethod get-string-from-local-edge-cache ((i individual))
  (let ((edge (get-local-edge-cache-entry i)))
    (when edge ;; complain if it's not there?
      (cond
       ;; inactive edge ERROR
       ((null (edge-starts-at edge))
        (format t "~&Trying to get surface string for ~s from inactive edge ~s"
                i edge)
        nil)
       (t
        (let* ((start-pos (pos-edge-starts-at edge))
               (end-pos (pos-edge-ends-at edge))
               (start-index (pos-character-index start-pos))
               (end-index (pos-character-index end-pos)))
          (unless (and start-index end-index)
            (error "Some position index is null"))
          (extract-string-from-char-buffers 
           start-index end-index)))))))


#| original 
(defun store-surface-string (indiv)
  (setf (gethash indiv *surface-strings*)
        (get-surface-string-for-individual indiv)))
|#
#| version two
(defun store-surface-string (i-edge-pair)
  (let ((i (car i-edge-pair)))
    (setf (gethash i *surface-strings*)
          (get-surface-string-for-individual i-edge-pair))))

(defun get-surface-string-for-individual (i-edge-pair)
  (let ((i  (car i-edge-pair))
        (edges (cdr i-edge-pair)))
  (or ;; fall through to progressively weaker string sources
   ;; if the strong source returns nil or we're not a protein
   (when (itypep i 'protein)
     ;;(get-surface-string-from-discourse-entry i)
     (get-surface-string-from-locally-recorded-edge edges))
   (let ((name (value-of 'name i)))
     (if name
       (etypecase name
         (string name)
         (word (word-pname name))
         (polyword (pw-pname name)))
       (format nil "~s" i))))) |#

(defun retrieve-surface-string (i)
  (gethash i *surface-strings*))


(defvar *local-individuals-and-their-edges* (make-hash-table)
  "Managed by individuals-under/record-edge, populated by
   collaboration between collect-model-description(edge) which 
   keeps track of the edge and collect-model-description(individual)
   which fills it with individuals.")

(defun record-individual-and-edge (i edge)
  (declare (special *local-individuals-and-their-edges*))
  (let ((entry (gethash i *local-individuals-and-their-edges*)))
    ;;(format t "~&recording ~a at ~a~%" i edge)
    (setf (gethash i *local-individuals-and-their-edges*)
          (if entry (push edge entry) (list edge)))))

(defun individuals-under/record-edge (treetop)
  ;; Called from all-individuals-in-tts whose purpose is to
  ;; collect the surface strings on all the mentioned 
  ;; proteins. 
  (declare (special *local-individuals-and-their-edges*))
  (clrhash *local-individuals-and-their-edges*)
  (let ((pairs nil)) ;; (individual . edges-it-occurs-in)
    (semtree treetop) ;; do the recording
    (maphash #'(lambda (i edges)
                 (push `(,i . ,edges) pairs))
             *local-individuals-and-their-edges*)
    pairs))

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
  (loop for edge in (cdr (all-tts)) 
    when (and (edge-p edge) 
              (not (word-p (edge-referent edge))))
    collect (semtree (edge-referent edge))))

(defun tts-edge-semantics ()
  (loop for edge in (cdr (all-tts)) 
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
  (let
      (relations)
    (when
        (and 
         (consp tree)
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
              (if
               (consp (car (second binding)))
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


(defmethod semtree ((x null) &optional short)
  (declare (ignore short))
  nil)

(defmethod semtree ((w word) &optional short)
  (declare (ignore short))
  nil)

(defmethod semtree ((n number) &optional (short t))
  (semtree (e# n) short))


(defvar *current-edge-semtree-is-walking* nil)

(defmethod semtree ((e edge) &optional (short t))
  (let ((*current-edge-semtree-is-walking* e))
    (declare (special *current-edge-semtree-is-walking*))
    (semtree (edge-referent e) short)))



(defparameter *semtree-seen-individuals* (make-hash-table)
  "Cleared and used by semtree to avoid walking through the
  same individual twice and getting into a loop.")

(defmethod semtree ((i individual) &optional (short t))
  (clrhash *semtree-seen-individuals*)
  (collect-model-description i short))

(defmethod semtree ((i referential-category) &optional (short t))
  (clrhash *semtree-seen-individuals*)
  (collect-model-description i short))


(defmethod collect-model-description ((cat category) &optional (short t))
  (declare (ignore short))
  (list cat))

(defmethod collect-model-description ((w word) &optional (short t))
  (declare (ignore short))
  (word-pname w))

(defmethod collect-model-description ((cal cons) &optional (short t))
  `(collection :members 
               (,@(loop for l in cal 
                    collect (collect-model-description l short)))))     

(defmethod collect-model-description ((i individual) &optional (short t))
  (declare (special i short *current-edge-semtree-is-walking*))
  (record-individual-and-edge i *current-edge-semtree-is-walking*)
  (cond
   ((gethash i *semtree-seen-individuals*)
    (list (list "!recursion!" i)))
   ((itypep i 'number)
    (if (itypep i 'collection)
     (value-of 'items i)
     (value-of 'value i)))
   ((and
     (itypep i 'bio-family)
     (not (itypep i 'collection)))
    (if short
     `(,i)
     (let ((bindings (indiv-binds i))
            (desc (list i)))
        (declare (special bindings desc))
        (append
         desc
         (loop for b in bindings 
           unless (member (var-name(binding-variable b))
                          '(members count))
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
                            '(trailing-parenthetical category))
                      (typep value 'mixin-category)) ;; has-determiner
            (cond
             ((or (numberp value)
                  (symbolp value)
                  (stringp value))
              (push (list (var-name var) value) desc))
             (t
              (typecase value
                (individual 
                 (if
                  (itypep value 'prepositional-phrase)
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
                (otherwise
                 (push-debug `(,value ,b ,i))
                 (break "Unexpected type of value of a binding: ~a" value))))))))
      
      (reverse desc)))))


;;;--------------------
;;; save the sentences
;;;--------------------

(defparameter *print-sentences* nil)

(defun possibly-print-sentence ()
  (declare (special *sentence-in-core* *print-sentences*))
  (when (numberp *print-sentences*)
    (format t "*** (p ~s) ;; ~s" 
            (sentence-string *sentence-in-core*) 
            (incf *print-sentences*))))



