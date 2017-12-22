;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2015-2017 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "sentence-corpora"
;;;   Module:  "grammar/tests/citations/code/"
;;;  version:  January 2017

;; initiated 1/25/15
;; 1/28/2015 added methods to for building a regression test for sentence semantics
;;  (one stepp beyond just the number of treetops)
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
(defvar *directory-for-tree-snapshots*
  (asdf:system-relative-pathname :sparser ""))

#| For R3 we have organized our different training and testing
texts into files that consist of calls to 'p', one for each
sentence in the passage. We can call these "sentence-corpora"
and setup a regression test that records the number of treetops
in the analysis of a particular sentence and compares it to
previous records of treetop-counts. 
|#

;;--- useful macro -- but what file should it really be in?

(defmacro with-total-quiet (&body body)
  `(let (;;(*readout-relations* nil)
         (*readout-segments* nil)
         (*readout-segments-inline-with-text* nil) ;; quiet
         (*show-article-progress* nil) ;; document handling
         ;; (*show-section-printouts* nil)
         (*display-word-stream* nil)
         (*trace-lexicon-unpacking* nil)
         (*trace-morphology* nil)
         (*workshop-window* t)) ;; block tts in p
     (declare (special *readout-relations* *readout-segments*
                       *show-article-progress* #|*show-section-printouts*|# 
                       *readout-segments-inline-with-text*
                       *display-word-stream*
                       *trace-lexicon-unpacking* *trace-morphology*
                       *workshop-window*))
     ,@body))


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

(defun find-corpus-instances (str)
  (loop for s in (all-corpus-sentences)
    when
    (search str (third s))
    collect s))

(defun show-sents (str)
  (np (find-corpus-sents str)))

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

(defun find-corpus-sents(str)
  (find-corpus-instances str))
