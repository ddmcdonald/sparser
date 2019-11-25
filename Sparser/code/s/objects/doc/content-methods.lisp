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

;;;------------------------------------
;;; aggregating entities and relations
;;;------------------------------------

;;--- uses aggregated-bio-terms class

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
       do (accumulate-bio-terms-and-add-counts
           sink (contents next)))
    d))

(defun accumulate-bio-terms-and-add-counts (sink source)
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
  "Return the name of the slot that this individual 
   should be added to."
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
  "The bucket exists. Need to add this term to it"
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

;;--- Uses paragraph-characteristics class

(defgeneric collect-text-characteristics (doc-element)
  (:documentation "Called from after-action on paragraphs.
    Counts shallow attributes over the sentences in the
    paragraph to get a coarse style marker of a sort.")
  
  (:method ((p paragraph))
    (declare (special *tts-after-each-section*))
    (let ((content (contents p))
          (sentences (sentences-in-paragraph p)) ; list of sentence objects
          (word-count (pos-token-index (ends-at-pos p))))
      (setf (sentence-count content) (length sentences))
      (setf (word-count content) word-count)

      (when *tts-after-each-section*
        (format t "~&Paragraph ~a~%  ~a sentences~%  ~a words~
                   ~%  ~4,1F words per sentence~%"
                p (length sentences) word-count
                (float (/ word-count (length sentences))))))))



;;;--------------------------------
;;; how well is our analysis doing
;;;--------------------------------

;; Uses sentence-parse-quality class
   
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
    

;;;----------------------------------
;;; what did we find in the sentence
;;;----------------------------------

;;--- Uses entities-and-relations class

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

;;--- Uses sentence-text-structure class

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

;;--- Uses sentence-discourse-history class

(defmethod set-discourse-history ((s sentence) (history t))
  "Called from end-of-sentence-processing-cleanup when nothing more
   is going to be modified."
  (setf (sentence-individuals (contents s)) history))
          


;;;---------------------
;;; status of the parse
;;;---------------------

;;--- Uses parsing-status class

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

;;--- uses records-of-delayed-actions class

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
  (declare (special *chunk* *chunks*))
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
