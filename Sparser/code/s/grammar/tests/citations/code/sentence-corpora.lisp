;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2015-2017 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "sentence-corpora"
;;;   Module:  "grammar/tests/citations/code/"
;;;  version:  January 2017

;; initiated 1/25/15
;; 1/28/2015 added methods to for building a regression test for sentence semantics
;;  (one step beyond just the number of treetops)
;; completed methods for semantic regression -- seems to work -- 
;; no comparison as yet.
;; 3/2/15 Finished compare-to-snapshot. 
;; 5/15/2015 changes to allow compare-to-snapshot to be used to collect
;; information that would otherwise only be saved in document processing --
;; added optional argument save-info on run-treetop-snapshot, etc.
;; 6/10/15 Added more printing parameters to ignore
;; 6/14/2015 code how-art-sents to find all the sentences in the set of articles
;;   so far processed that have a given string
;; 9/29/15 moved next to rest of the related code. 
;; 10/26/15 reverted *directory-for-tree-snapshots* to the local directory
;;   assuming that other systems know how to override it. 

(in-package :sparser)

#| For R3 we have organized our different training and testing
texts into files that consist of calls to 'p', one for each
sentence in the passage. We can call these "sentence-corpora"
and setup a regression test that records the number of treetops
in the analysis of a particular sentence and compares it to
previous records of treetop-counts. 
|#

(defvar *directory-for-tree-snapshots*
  (asdf:system-relative-pathname :sparser ""))

;;;---------
;;; classes
;;;---------

(defclass sentence-corpus (named-object)
  ((snapshots :initform nil :accessor snapshots
    :documentation "Filled by a list of treetop snapshots, most recent first")
   (variable :initform nil :accessor corpus-bound-variable
    :documentation "The variable that's bound to the list of calls to p"))
  (:documentation ""))

(setup-find-or-make 'sentence-corpus)


(defclass treetop-snapshot ()
  ((corpus :initarg :corpus :accessor snapshot-corpus
    :documentation "Backpointer")
   (timestamp :accessor snapshot-timestamp
    :documentation "Readable for for organizing file")
   (pairs :accessor snapshot-pairs
    :documentation "Dotted pair of sentence number and treetop count")))

(defmethod print-object ((ts treetop-snapshot) stream)
  (print-unreadable-object (ts stream :type t)
    (format stream "~a ~a" 
            (name (snapshot-corpus ts))
            (snapshot-timestamp ts))))


;;;---------
;;; methods
;;;---------

;;--- define corpora

(defmacro define-sentence-corpus (name variable &key location doc)
  `(define-sentence-corpus/expr 
       ',name ',variable :location ',location :doc ,doc))

(defun define-sentence-corpus/expr (name variable &key location doc)
  (declare (ignore location doc))
  (let ((sc (find-or-make-sentence-corpus name)))
    (setf (corpus-bound-variable sc) variable)
    sc))
  

;;--- run their sentences

(defvar *snapshot-corpus* nil
  "Dynamically bound by run-treetop-snapshot to the name of
   the corpus being executed. Read by downstream tally code.")

(defvar *snapshot-index* nil
  "Dynamically bound by run-treetop-snapshot to the number of
   the sentence being run. Read by downstream tally code.")

(defparameter *p-sent* nil
  "Set to the text of the sentence being run in the run-sentences
   inner function of run-treetop-snapshot")


(defmethod run-treetop-snapshot ((name symbol) &optional (save-info nil))
  (let ((corpus (get-sentence-corpus name)))
    (unless corpus
      (error "No sentence corpus has been defined with the name ~a" name))
    (let ((*snapshot-corpus* name))
      (declare (special *snapshot-corpus*))
      (run-treetop-snapshot corpus save-info))))

(defmethod run-treetop-snapshot ((corpus sentence-corpus) &optional (save-info nil))
  (let* ((variable (corpus-bound-variable corpus))
         (*snapshot-corpus* (name corpus)))
    (declare (special *snapshot-corpus*))
    (unless variable
      (error "Corpus not set up with a variable"))
    (with-total-quiet
      (let ((*do-anaphora* nil) ;; no anaphora on single sentences
            (index 0) pairs )
        (declare (special *do-anaphora*))

        (flet ((run-sentences (variable)
                 (dolist (exp (eval variable)) ;; (p "...")
                   (setq *p-sent* exp)
                   (incf index)
                   (let ((*snapshot-index* index))
                     (declare (special *snapshot-index*))
                     (eval exp)
                     (let ((sentence (sentence)))
                       ;;(push-debug `(,sentence ,corpus)) (break "check sentence")
                       (if (null sentence) ;; if we are aborting a sentence when we get an error
                           (progn (warn "Error during parsing of ~s~%" exp)
                                  (push `(,index . ,0) pairs))
                           (let* ((first-sentence (first-sentence))
                                  (count (length
                                          (if (eq first-sentence sentence)
                                            (treetops-between
                                             (starts-at-pos sentence)
                                             (ends-at-pos sentence))
                                            
                                            (treetops-between
                                             (starts-at-pos first-sentence)
                                             (ends-at-pos sentence))))))
                             (push `(,index . ,count) pairs))))))))

          (if save-info
            (let ((*reading-populated-document* t)
                  (*recognize-sections-within-articles* nil) ;; turn off doc init
                  (*accumulate-content-across-documents* t)) ;; don't clear history
              (declare (special *reading-populated-document*
                                *recognize-sections-within-articles*
                                *accumulate-content-across-documents*))
              (run-sentences variable))
            (run-sentences variable))

          (nreverse pairs))))))




;;--- compare current performance to a snapshot

(defparameter *default-snapshot-corpora* '(overnight dec-test dry-run aspp2 erk dynamic-model
                                           #+ignore load-test)
  "List of corpora to test in COMPARE-TO-SNAPSHOTS.")

(defun do-load-test ()
  (declare (special *default-snapshot-corpora*))
  (setq *default-snapshot-corpora*
        '(overnight dec-test dry-run aspp2 erk dynamic-model load-test)))

(defun compare-to-snapshots (&optional
                             (save-info nil)
                             (corpora *default-snapshot-corpora*))
  (loop for c in corpora
    do (terpri)
    (print c)
    (print (compare-to-snapshot c save-info))))


(defun save-treetop-snapshots (&optional
				 (save-info nil)
				 (corpora *default-snapshot-corpora*))
  (declare (special *directory-for-tree-snapshots*)
           (ignore save-info))
  (loop for c in corpora
     do (terpri)
       (print c)
       (print (save-treetop-snapshot
	       c
	       (merge-pathnames "corpora-snapshots.lisp"
				*directory-for-tree-snapshots*)))))


(defmethod compare-to-snapshot ((name symbol) &optional (save-info nil))
  (declare (ignore save-info))
  (let ((corpus (get-sentence-corpus name)))
    (unless corpus
      (error "No sentence corpus has been defined with the name ~a" name))
    (compare-to-snapshot corpus)))

(defmethod compare-to-snapshot  ((corpus sentence-corpus)&optional (save-info nil))
  (declare (ignore save-info))
  ;;/// consider a way to designate which snapshot to compare against
  (let* ((current-pairs (run-treetop-snapshot corpus))
         (snapshot (car (snapshots corpus)))
         (reference-pairs (snapshot-pairs snapshot))
         (*initialize-with-each-unit-of-analysis* nil))
    (declare (special *initialize-with-each-unit-of-analysis*))
    (let ( better worse )
      (loop for ref-pair in reference-pairs
        as pair in current-pairs
        when (> (cdr pair) (cdr ref-pair)) ;; more treetops
        do (push (car pair) worse)
        when (< (cdr pair) (cdr ref-pair)) ;; fewer
        do (push (car pair) better))
      (format t "~&Better: ~a~
                 ~%Worse: ~a" better worse)
      (list current-pairs better worse))))


;;--- package runs into snapshots

(defmethod make-treetop-snapshot ((name symbol))
  (let ((corpus (get-sentence-corpus name)))
    (unless corpus
      (error "No sentence corpus has been defined with the name ~a" name))
    (make-treetop-snapshot corpus)))
      
(defmethod make-treetop-snapshot ((corpus sentence-corpus))
  (let ((pairs (run-treetop-snapshot corpus)))
    (let ((snapshot (make-instance 'treetop-snapshot :corpus corpus)))
      (setf (snapshot-timestamp snapshot)
            (date-&-time-as-formatted-string))
      (setf (snapshot-pairs snapshot) pairs)
      snapshot)))


;;--- write the snapshot to a file 




(defparameter *file-for-treetop-semantic-snapshots*
  (merge-pathnames "treetop-semantic-records.lisp"
                   *directory-for-tree-snapshots*)
  "This file is in the loader for citations so it will always be
   included in a load of Sparser")

(defmethod save-treetop-snapshot ((name symbol) 
                                  &optional
				    (file   (merge-pathnames "corpora-snapshots.lisp"
							     *directory-for-tree-snapshots*)))
  (declare (special *directory-for-tree-snapshots*))
  (let ((corpus (get-sentence-corpus name)))
    (unless corpus
      (error "No sentence corpus has been defined with the name ~a" name))
    (save-treetop-snapshot corpus file)))

(defvar *file-for-treetop-snapshots*)
(defmethod save-treetop-snapshot ((corpus sentence-corpus)
                                  &optional (file *file-for-treetop-snapshots*))
  (let ((snapshot (make-treetop-snapshot corpus)))
    (with-open-file (stream file
                     :direction :output
                     :if-exists :append
                     :if-does-not-exist :error)
        (write-treetop-snapshot snapshot stream))))

(defun write-treetop-snapshot (snapshot stream)
  (let ((corpus (snapshot-corpus snapshot)))
    (format stream "~&(define-treetop-snapshot ~a ~s"
            (name corpus)
            (snapshot-timestamp snapshot))
    ;; five pairs per line until we have them all
    (let* ((pairs (snapshot-pairs snapshot))
           (remaining-pairs pairs)
           (count-remaining (length pairs))
           five-pairs )
      (flet ((write-pair (pair)
               (format stream " (~a . ~a)"
                       (car pair) (cdr pair)))
             (next-five-pairs ()
               (loop repeat 5
                 collect (pop remaining-pairs))))
        (loop
          (when (> 5 count-remaining)
            (return))
          (terpri stream)
          (setq five-pairs (next-five-pairs))
          (loop for i from 0 to 4 do
            (decf count-remaining)
            (write-pair (nth i five-pairs))))
        (when remaining-pairs ;; no extra line if event
          (terpri stream))
        ;;(push-debug `(,remaining-pairs))
        (loop repeat (length remaining-pairs)
          do  (write-pair (pop remaining-pairs)))
        (format stream ")~%~%")))))
        

;;--- reading them from the file

(defmacro define-treetop-snapshot (corpus-name timestamp &rest pairs)
  `(define-treetop-snapshot/expr ',corpus-name ,timestamp ',pairs))

(defun define-treetop-snapshot/expr (corpus-name timestamp pairs)
  (let* ((corpus (get-sentence-corpus corpus-name))
         (snapshot (make-instance 'treetop-snapshot :corpus corpus)))
    (setf (snapshot-timestamp snapshot) timestamp)
    (setf (snapshot-pairs snapshot) pairs)
    (push snapshot (snapshots corpus))
    snapshot))


;;--- functions for extended regression test

(defun sem-result (sent)
  (with-total-quiet
     (pp sent)
    `(,sent
      ',(loop for edge in (tts-semantics)
          collect (simple-sem edge)))))
  

(defun simple-sem (semtree)
  (cond
   ((consp semtree)
    (cond
     ((individual-p (car semtree))
      (cons
       (let ((s (make-string-output-stream)))
         ;; this next form side effects the value of s
         ;; making it contain the simplified string for the individual
         (string-for-individual (car semtree) s)
         ;; we use the revised value of s to produce the output
         (intern(get-output-stream-string s)))
       (loop for binding in (cdr semtree)
         when (second binding)
         collect
         (list (car binding)
               (simple-sem (second binding))))))))
   (t semtree)))



(defclass treetop-semantic-snapshot ()
  ((corpus :initarg :corpus :accessor snapshot-corpus
    :documentation "Backpointer")
   (timestamp :accessor snapshot-timestamp
    :documentation "Readable for for organizing file")
   (semantic-pairs :accessor sem-pairs
    :documentation "Dotted pair of sentence number and treetop simplified semantics")))

(defmethod print-object ((ts treetop-semantic-snapshot) stream)
  (print-unreadable-object (ts stream :type t)
    (format stream "~a ~a" 
            (name (snapshot-corpus ts))
            (snapshot-timestamp ts))))

(defmethod run-treetop-semantic-snapshot ((name symbol))
  (let ((corpus (get-sentence-corpus name)))
    (unless corpus
      (error "No sentence corpus has been defined with the name ~a" name))
    (run-treetop-semantic-snapshot corpus)))

(defmethod run-treetop-semantic-snapshot ((corpus sentence-corpus))
  (let ((variable (corpus-bound-variable corpus)))
    (unless variable
      (error "Corpus not set up with a variable"))
    (let ((*readout-relations* t)
          (*readout-segments* nil)
          (*readout-segments-inline-with-text* nil) ;; quiet
          (*display-word-stream* nil)
          (*trace-lexicon-unpacking* nil)
          (*trace-morphology* nil)
          (*workshop-window* t) ;; block tts in p
          (index 0) pairs )
      (declare (special *readout-relations* *readout-segments*
                        *readout-segments-inline-with-text*
                        *display-word-stream*
                        *trace-lexicon-unpacking* *trace-morphology*
                        *workshop-window*)) 
      (dolist (exp (eval variable)) ;; (p "...")
        (incf index)
        (push
         (sem-result (second exp))
         pairs))
      (nreverse pairs))))

(defmethod make-treetop-semantic-snapshot ((name symbol))
  (let ((corpus (get-sentence-corpus name)))
    (unless corpus
      (error "No sentence corpus has been defined with the name ~a" name))
    (make-treetop-semantic-snapshot corpus)))
      
(defmethod make-treetop-semantic-snapshot ((corpus sentence-corpus))
  (let ((pairs (run-treetop-semantic-snapshot corpus)))
    (let ((snapshot (make-instance 'treetop-snapshot :corpus corpus)))
      (setf (snapshot-timestamp snapshot)
            (date-&-time-as-formatted-string))
      (setf (snapshot-pairs snapshot) pairs)
      snapshot)))


(defmethod save-treetop-semantic-snapshot ((name symbol) 
                                           &optional (file *file-for-treetop-semantic-snapshots*))
  (declare (special *file-for-treetop-semantic-snapshots*))
  (let ((corpus (get-sentence-corpus name)))
    (unless corpus
      (error "No sentence corpus has been defined with the name ~a" name))
    (save-treetop-semantic-snapshot corpus file)))

(defmethod save-treetop-semantic-snapshot ((corpus sentence-corpus)
                                           &optional (file *file-for-treetop-semantic-snapshots*))
  (declare (special *file-for-treetop-semantic-snapshots*))
  (let ((snapshot (make-treetop-semantic-snapshot corpus)))
    (with-open-file (stream file
                     :direction :output
                     :if-exists :append
                     :if-does-not-exist :error)
        (write-treetop-semantic-snapshot snapshot stream))))

(defun write-treetop-semantic-snapshot (snapshot stream)
  (let ((corpus (snapshot-corpus snapshot)))
    (format stream "~&(define-treetop-semantic-snapshot ~a ~s"
            (name corpus)
            (snapshot-timestamp snapshot))
    (format stream "~&'(~%")
    (loop for pair in (snapshot-pairs snapshot)
      do 
      (format stream " (~s" (car pair))
      (pprint (cdr pair) stream)
      (format stream ")~%~%"))
    (format stream "))~%")))
        
;;; RUSTY added these utility functions
(defun all-corpus-sentences ()
  (declare (special *sentence-corpus-table*))
  (let ((scvars nil)) 
    (maphash #'(lambda(key val) 
                 (push (list key (corpus-bound-variable val)) scvars)) 
             *sentence-corpus-table*) 
    (loop for v in scvars 
      append 
      (loop for p in (eval (second v)) 
        as i from 1 by 1
        collect 
        (list (car v) i (second p))))))

(defun find-corpus-instances (str &optional all-sents)
  (if (consp all-sents)
      (cond ((stringp (car all-sents))
             (loop for s in all-sents
                   when (search str s)
                     collect s))
            ((and (consp (car all-sents))
                  (stringp (car (last (car all-sents)))))
             (loop for s in all-sents
                   when (search str (car (last s)))
                     collect s))
            (t
             (break "~%The input all-sents should be either a list of strings, or 
a list of three element items whose third element is a string~%")))
         
      (loop for s in (all-corpus-sentences)
            when
            (search str (third s))
            collect s)))

(defun show-sents (str &optional all-sents)
  (unless (or (null all-sents)
              (and (consp all-sents)
                   (or (stringp (car all-sents))
                       (and (consp (car all-sents))
                            (stringp (car (last (car all-sents))))))))
    (break "~%The input all-sents should be either a list of strings, or 
a list of three element items whose third element is a string~%"))
  (np (find-corpus-sents str all-sents)))

(defun show-art-sents (str &optional sents)
  (declare (special *all-sentences*))
  (if sents
      (loop for a in sents when (search str (car a))
        collect (list (car a) (second a)))
      (loop for a in *all-sentences* when (search str (car a))
        collect (list (car a) (name (third a))))))

(defun phos-sents ()
  (remove-duplicates 
   (loop for a in (all-phosphorylations)
     collect (list (second a) (name (third a))))
   :test #'equal))

(defun find-corpus-sents(str &optional all-sents)
  (find-corpus-instances str all-sents))

;;;---------------------------------
;;; regression testing for chunking
;;;---------------------------------

(defparameter *chunking-results-directory*
  (asdf:system-relative-pathname
   :sparser "Sparser/code/s/grammar/tests/citations/cases/")
  "Where we write chunking results to")

(defvar *chunking-result* nil
  "This writer works asyncronously with the parsing. There's no direct
 connection to the chunker and parser-output that's worth the effort to
 create it. Instead, the chunker stores the description of its chunks
 on this variable, and we pick it up here as part of writing process.")

;; (write-chunking-results-to-file *chunking-text-strings*)

(defun write-chunking-results-to-file (sentence-list &key label)
  "Walk through the sentence list parsing them only up to chunking,
   and write a pairs of sentence and chunking pattern to a file"
  (unless label (setq label 'chunk-results))
  (let* ((parameter-name (string-append "*" label "*"))
         (file-name (string-append (string-downcase (symbol-name label)) ".lisp"))
         (pathname (merge-pathnames file-name *chunking-results-directory*))
         (*parse-chunked-treetop-forest* nil) ; stop with the chunker & pts
         (*record-chunks-for-regression-test* t) ; record the pattern of chunks
         (*readout-segments-inline-with-text* nil)
         (index -1))
    (declare (special *parse-chunked-treetop-forest*
                      *record-chunks-for-regression-test*
                      *readout-segments-inline-with-text*
                      *chunking-result*))
    (with-open-file (stream pathname
                            :direction :output :if-exists :supersede)
      (format stream ";;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-~
                    ~%;;; Chunking reference results for ~a~
                    ~%;;; ~a~%~%(in-package :sparser)~%~%"
              label (date-&-time-as-formatted-string))
      (format stream "~&(defparameter ~a~%  '(" parameter-name)
      (loop for sentence in sentence-list
         do (analyze-text-from-string sentence)
           (unless *chunking-result* (error "chunk record didn't run?"))
           (format stream "~&(~s ;; #~a"
                   sentence (incf index))
           (format stream "~&  ~s)~%~%" *chunking-result*))
      (format stream "))"))))


;;/// How do we most usefully report the results?
;; The index of the sentence? The sentence? Single fallbacks vs.
;; massive ...
(defun test-for-chunking-regressions (label)
  (let* ((parameter-name (string-append "*" label "*"))
         (file-name (string-append (string-downcase (symbol-name label)) ".lisp"))
         (pathname (merge-pathnames file-name *chunking-results-directory*)))
    (load pathname)
    (unless (boundp parameter-name) (error "parameter unbound?"))
    (let ((pair-list (eval parameter-name)))
      (loop for pair in pair-list
         as sentence = (car pair)
         as reference = (cadr pair)
         do (compare-chunking sentence reference)))))

(defun compare-chunking (sentence reference)
  "Parse the sentence with chunk recording on. Compare the result now
   with the reference result. Returning nil means the reference and
   present chunking are not identical."
  (declare (special *chunking-result*))
  (let ((*record-chunks-for-regression-test* t))
    (declare (special *record-chunks-for-regression-test*))
    (analyze-text-from-string sentence)
    (let ((result *chunking-result*))
      (equal result reference))))


;; These are the sentences in the snapshots that hit on the new heuristic
;; for handling noun/verb ambiguity
(defparameter *chunking-text-strings*
  '(;; dec 22
    "We propose that when BRAF is  inhibited, it escapes this auto-inhibited fate and is recruited to the plasma membrane by RAS, where it forms a stable complex with CRAF."
    ;; dec 28
    "Based on these results, we hypothesized that COT and C-RAF drive resistance to RAF inhibition predominantly through re-activation of MAPK signaling."
    ;; dec 9
    "Similarly, all four drugs inhibited ERK in SkMel24, SkMel28, D25, and WM266.4 cells, another four lines that express mutant BRAF (Figure S1G)."
    ;; overnight 4
    "However, our results provide the first direct evidence for a protein that 
 may stabilize nucleotide-free Ras in vivo."
    ;; dec 51
    "Identification of resistance mechanisms in a manner that elucidates alternative ‘druggable’ targets may inform effective long-term treatment strategies [12]."
    ;; dec 57
    "Together, these results provide new insights into resistance mechanisms involving the MAPK pathway and articulate an integrative approach through which high-throughput functional screens may inform the development of novel therapeutic strategies."
    ;; dry run 6
    "We obtained similar results using K–Ras, indicating that the effects
of monoubiquitination on Ras are not isoform–specific."
    ;; dry 13
    "These data support our in vitro findings that monoubiquitination
increases the population of active, GTP–bound Ras through a defect in
sensitivity to GAP–mediated regulation."
    ;; dry 14
    "It was established recently that monoubiquitination increases the
proportion of Ras that is in the activated (GTP–bound) state, that
monoubiquitination enhances association with the downstream effectors
Raf and PI3–Kinase, and that mutation of the primary site of
monoubiquitination impairs oncogenic Ras–mediated tumorigenesis."
    ;; 19
    "Our modeling and NMR analyses indicated that Ubiquitin dynamically
samples a broad surface area of Ras that alters switch region
dynamics."
    ;; 20
    "These results led us to examine the effect of monoubiquitination on
the interaction of Ras with its cognate GEF and GAPs, which also
target the switch domains."
    ;; 44
    "We show here that ASPP2 is phosphorylated by the RAS/Raf/MAPK pathway
and that this phosphorylation leads to its increased translocation to
the cytosol/nucleus and increased binding to p53, providing an
explanation of how RAS can activate p53 pro-apoptotic functions."
    ;; aspp2 30
    "Raf CAAX increases Bax-luciferase levels by 2.5 fold over the baseline of p53 and ASPP2 alone."
    ;; 39
    "These results suggest that MAPK phosphorylation of ASPP2 Ser827 is necessary for Raf CAAX to stimulate the full transcriptional activity of p53 via ASPP2."
    ;; 50
    "It has recently been shown that activation of RAS results in ASPP2 translocation from the plasma membrane to the cytosol and nucleus [2]."
    ;; 69
    "We show here that ASPP2 is phosphorylated by the RAS/Raf/MAPK pathway and that this phosphorylation leads to its increased translocation to the cytosol/nucleus and increased binding to p53, providing an explanation of how RAS can activate p53 pro-apoptotic functions (Figure 5)."
    ;; 79
    "The ability of oncogenic RAS to stimulate apoptosis allows the cell to have a fail-proof mechanism: mutated RAS signals to p53 via ASPP2 to induce apoptosis instead of uncontrolled proliferation."
    ;; 83
    "Wild-type ASPP2, but not mutant ASPP2 (S827A), translocates to the cytosol and nucleus upon oncogenic RAS activation and this results in an increased interaction with p53."
    ;; erk 10
    "These results indicate that the differential shuttling behavior of the mutant is a consequence of delayed phosphorylation of ERK by MEK rather than dimerization."
    ))
