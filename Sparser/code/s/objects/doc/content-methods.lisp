;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 2013-2020 David D. McDonald -- all rights reserved
;;;
;;;     File:  "content-methods"
;;;   Module:  "objects;doc;"
;;;  Version:  April 2020

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
   levels.")
  (:method ((d document-element))
    (let ((sink (contents d))
          (daughters (children d)))
      (loop for next in daughters
         do (accumulate-bio-terms-and-add-counts
             sink (contents next)))
      d)))

(defun accumulate-bio-terms-and-add-counts (sink source)
  "Extend the records on the parent document element ('sink')
   with the content of the records on the daughter element ('source').
   Walk through each of the interesting slots and extend the
   records on the sink with those on the source."
  (declare (special *term-buckets*))
  (when source ;; source is nil when section has been ignored
    (assert (typep sink 'aggregated-bio-terms))
    (assert (typep source 'aggregated-bio-terms))
    (loop for bucket in *term-buckets*
         do (add-new-terms-or-add-counts bucket sink source))
    sink))

(defun add-new-terms-or-add-counts (field sink source)
  "Increments the counts/mentions on the sink of items that are
   already there, and adds in entries for any new ones."
  (let ((source-entries (slot-value source field))
        (sink-entries (slot-value sink field)))
    (loop for source-entry in source-entries
       do (let* ((i (car source-entry))
                 (sink-entry (assq i sink-entries)))
            (cond
              (sink-entry
               (let ((sink-count (second sink-entry))
                     (source-count (second source-entry))
                     (sink-mentions (third sink-entry))
                     (source-mentions (third source-entry)))
                 (setf (second sink-entry) (+ sink-count source-count))
                 (setf (third sink-entry)
                       (append source-mentions sink-mentions))))
               (t
                (push source-entry
                      (slot-value sink field))))))
    sink))


;;--- sentences => paragraph contents

(defmethod aggregate-bio-terms ((p paragraph))
  "Collect the raw lists of entities and relations from 
  the sentences of the paragraph and distribute them
  into buckets (slots on the content object) at whatever
  degree of delicacy seems the most useful."
  (when (typep (contents p) 'aggregated-bio-terms)
    (let ((sentences (sentences-in-paragraph p)))
      ;;/// something should attend to the topic sentence
      (dolist (s sentences)
        (aggregate-sentence-bio-terms s p)
        (sort-bio-terms p (contents p))))))

(defmethod aggregate-bio-terms ((tt title-text))
  (let ((s (children tt)))
    (aggregate-sentence-bio-terms s tt)
    (sort-bio-terms tt (contents tt))))

(defgeneric filter-for-relevant-mentions (sentence)
  (:documentation "Take the raw set of mentions created by
    walking the mention forest and pass them through the
    relevant-for-dh filter")
  (:method ((s sentence))
    (filter-for-relevant-mentions (contents s)))
  (:method ((c container))
    (let ((raw (remove-duplicates (sentence-mentions c))))
      (setf (sentence-mentions c)
            (filter-list-of-items-for-relevance raw)))))

(defun aggregate-sentence-bio-terms (s p)
  "Given a sentence s and paragraph p, update the entities and relations
   for relevance and pass the mentions off to be bucketized."
  ;;(set-entities s (filter-list-of-items-for-relevance (get-entities s)))
  ;;(set-entities s (filter-list-of-items-for-relevance (get-relations s)))
  (aggregate-terms p (filter-for-relevant-mentions s)))
  

(defun aggregate-terms (paragraph terms)
  "Store the terms in the content object of the paragraph
   using slots determined by the function aggregation-target
   that tries to make a useful breakdown by type.
   We record the number of times each term was mentioned
   in the paragraph so we can accumulate by count in
   larger sections."
  (when terms
    (unless (every #'mention-p terms)
      (break "Revise aggregate-terms - terms aren't all mentions")
      (return-from aggregate-terms nil))

    (flet ((get-from-bucket (item bucket)
             (assq item bucket))
           (incf-bucket-entry (entry mention)
             (incf (second entry))
             (let ((existing-mentions (third entry)))
               (setf (third entry)
                     (cons mention existing-mentions))))
           (make-bucket-entry (i mention bucket slot-name contents-instance)
             "The bucket exists. Need to add this term to it"
             (let* ((entry `(,i 1 (,mention)))
                    (new-bucket-value (cons entry bucket)))
               (setf (slot-value contents-instance slot-name)
                     new-bucket-value))))

      (let ((c (contents paragraph)))
        (dolist (term terms)
          (multiple-value-bind (slot i)
              (aggregation-target term)
            (let ((mention term)) ; renaming for clarity
              (let ((bucket (slot-value c slot)))
                (cond
                  ((null bucket)
                   (let* ((entry `(,i 1 (,mention)) ) ; first entry in bucket
                          (bucket `( ,entry  )))
                     (setf (slot-value c slot) bucket)))
                  (t
                   (let ((entry (when bucket (get-from-bucket i bucket))))
                     (if entry
                       (incf-bucket-entry entry mention)
                       (make-bucket-entry i mention bucket slot c)))))))))))))


(defgeneric aggregation-target (item)
  (:documentation "Called by aggregate-terms to determine the name of
    the slot where we're going to store this item. Aggregate-terms manages
    the instance count on the item. That is problematic for mentions
    since by definition each one is unique. To handle that we return
    as a second value the individual that the mention is based on")
  (:method ((m discourse-mention))
    (let ((i (if (and (slot-boundp m 'ci)
                      (contextual-description m)) ; it might be bound but nil
               (contextual-description m)
               (base-description m))))
      (values (aggregation-target i)
              i)))
  (:method ((i individual))
    (cond
      ((eq (itype-of i) (category-named 'bio-entity))
       'other)
      ((and (itypep i 'bio-process)
            (not (itypep i 'comlex-derived)))
       'biological-processes)
      ((itypep i '(:or protein human-protein-family))
       'proteins)
      ((itypep i 'drug)
       'drugs)
      ((itypep i 'residue-on-protein) ;; or other regions
       'residues)
      ((itypep i 'medical-condition) 'medical-conditions)
      ((or (itypep i 'infectious-agent)
           ;; pathogens are not (always) infectious agents,  but for now...
           (itypep i 'pathogen))
       'infectious-agents)
      ((itypep i 'cellular-location) 'cellular-locations)
      ((itypep i 'tissue) 'organs/tissues)
      ((itypep i 'cell-type) 'cell-types)
      ((itypep i 'medical-method) 'medical-methods)
      ((itypep i 'bio-method) 'experimental-methods)
      ((itypep i 'protein-domain) 'protein-domains)
      ((itypep i 'bio-chemical-entity) 'other-chemical-entities)
      ((itypep i 'bio-predication) 'biological-predications)
      ((or (itypep i 'species)
           (and (itypep i 'organism)
                (not (or (itypep i 'infectious-agent)
                         (itypep i 'pathogen)))))
       'species)
      ((itypep i 'geographical-region) 'locations)
      ((and (get-tag :file-location (itype-of i))
            (eq :comlex (get-tag :file-location (itype-of i))))
       'COMLEX)
      (T
       'other)))
  (:method ((cat referential-category))
    'other)  
  (:method ((odd T))
    (error "Unexpected type of thing passed to aggregation-target: ~
            ~a~%  ~a" (type-of odd) odd)))


(defgeneric consolidate-aggregations (article)
  (:documentation "Up to this point, the entries in the aggregation
   buckets are headed by an individual. But the same base individual
   often occurs in several entries because those correspond to different
   extension of the head (e.g. 'factors' -- 'climatic factors' and
   'other factors'). Here we go through every entry in every bucket
   and replace the individuals with their head strings.")
  (:method ((a article))
    (loop for slot-name in *term-buckets*
       as bucket = (slot-value (contents a) slot-name)
       do (let* ((new-contents (consolidate-bucket bucket))
                 (new-sorted (sort (copy-list new-contents)
                                   'sort-aggregation-table-entries)))
            (setf (slot-value (contents a) slot-name)
                  new-sorted)))))

(defvar *consolidated-entries* (make-hash-table :test #'equal))

(defun consolidate-bucket (list-of-entries)
  "Maybe their larger structures are worth reifying -- in structs?
   Then we could ripple the consolidate method"
  (clrhash *consolidated-entries*)
  (flet ((consolidate-entry (table-entry revised-entry)
           "Add the mentions of the revised entry to the table entry"
           (setf (third table-entry)
                 (append (third revised-entry)
                         (third table-entry)))
           (setf (second table-entry) (length (third table-entry)))))
    (loop for entry in list-of-entries
       as canonical-name = (canonical-string entry)
       as revised-entry = (cons canonical-name (cdr entry))
       as table-entry = (gethash canonical-name *consolidated-entries*)
       unless table-entry
       do (setf (gethash canonical-name *consolidated-entries*) revised-entry)
       when table-entry do (consolidate-entry table-entry revised-entry))
     (all-hash-vals *consolidated-entries*)))

  #| for each entry in the bucket
 - determine its canoncal string
     - replace the individual in the entry with this string
   - check whether we've already stored a count and mentions
     on the table under this string as the key
       - if we haven't, store this modified entry as the fst value
       - if we have, the we merge this entry with the one that's 
           already there.
   - when we've done this for every entry,
       - drain the table back into a list, 
         and sort it like we usually do (though with a different
          signature for the alphabetical part of the sort.
       - replace the value in the slot with this revised value
|#

(defun canonical-string (mention-entry)
  "The entry has three values, its individual, the count, and a list
   of the mentions of that individual. We select one of those mentions
   and return the corresponding 'short' (head) string"
  (let* ((m (car (third mention-entry)))
         (string (string-for-mention m)))
    (unless string
      (break "no string for mention ~a" m)
      (setq string "")) ;;// warn?
    (trim-whitespace string)))



;;;-----------------------------------
;;; tally properties of text qua text
;;;-----------------------------------

;;--- Uses paragraph-characteristics class
;;     and also word-frequency when above paragraph level

(defgeneric collect-text-characteristics (doc-element)
  (:documentation "Called from after-action on paragraphs.
    Counts shallow attributes over the sentences in the
    paragraph to get a coarse style marker of a sort.")
  
  (:method ((p paragraph))
    (declare (special *print-text-stats*))
    (when (and (starts-at-pos p) (ends-at-pos p))
      (let* ((content (contents p))
             (sentences (sentences-in-paragraph p)) ; list of sentence objects
             (start-index (pos-token-index (starts-at-pos p)))
             (end-index (pos-token-index (ends-at-pos p)))
             (word-count (- end-index start-index)))
        (setf (sentence-count content) (length sentences))
        (setf (word-count content) word-count)
        (setf (token-count p) word-count)

        (when *print-text-stats*
          (format t "~&Paragraph ~a.  ~a sentences  ~a words.
                   ~%~%"
                  p (length sentences) word-count
                  ))
        word-count ))))

#|    ~4,1F words per sentence
     (float (/ word-count (length sentences)))
|#

(defgeneric aggregate-text-characteristics (doc-element)
  (:documentation "Add up the word-count over the element's
    daughters. Other paragraph-level assessed characteristics
    can be put here later.")
  (:method ((e document-element))
    (let ((count (loop for d in (children e)
                    sum (token-count d))))
      (setf (token-count e) count)
      count)))



;;;--------------------------------------------
;;; what 'noteworthy' individuals have we seen
;;;--------------------------------------------

;; accumulate-items class holds an alist of count of
;;  noted categories.

(defgeneric collect-noted-items (doc-element)
  (:documentation "The accumulate-items class holds
    an alist of the count of noted categories. See the
    function 'note' for details. Specialized to the relationship
    between a paragraph and the sentences in it.")
  (:method ((p paragraph))
    (let* ((sentences (sentences-in-paragraph p))
           (contents (loop for s in sentences collect (contents s)))
           (alists (loop for c in contents
                      when (items c) collect (items c))))         
      (when alists
        (push-debug `(,alists)) 
        (setf (items (contents p))
              (merge-items-alist alists)))
      p)))

(defgeneric aggregate-noted-items (doc-element)
  (:documentation"Carries out the same thing as collect-noted-items
    but over the elements children uniformly")
  (:method ((parent has-children))
    (let* ((children (children parent))
           (contents (loop for c in children collect (contents c)))
           (alists (loop for d in contents
                      when (items d) collect (items d))))
      (when alists
        (setf (items (contents parent))
              (merge-items-alist alists)))
      parent)))


(defun merge-items-alist (alists)
  (let ((merged-alist (first alists))) ; prime the pump
    (loop for alist in (cdr alists)
       do (loop for (name number) in alist
             ;; walk through the alist
             do (let ((entry (assoc name merged-alist :test #'eq)))
                  (cond
                    (entry
                     (let* ((base (cadr entry))
                            (sum (+ base number)))
                       (setf (cadr entry) sum)))
                    (t (push alist merged-alist))))))
    merged-alist))
          

#| Convenient viewer. 'a' is bound to the article

(loop for p in (paragraphs-in-doc-element a)
   do (loop for s in (sentences-in-paragraph p)
         do (print (items (contents s)))))

(run-specific-acumen-file 217 :quiet nil)

Something is sticky, since these numbers are too uniform to be
explained just by the structure of the parse. Or we run the note
operations too much?  5/19/21

(defvar alists
'(((multiplier 7))
 ((company 8) (name-word 7)) ((company 8) (name-word 7))
 ((named-object 8) (name-word 7))
 ((named-object 8) (name-word 7))
 ((year 7))
 ((year 8) (named-object 7))
 ((year 8) (named-object 7))
 ((named-object 7))
 ((name-word 8) (us-state 8) (named-object 7))
 ((name-word 8) (us-state 8) (named-object 7))
 ((number 7)) ((name-word 7))
 ((plural 8) (unit-of-measure 7))
 ((plural 8) (unit-of-measure 7))
 ((number 8) (us-state 8) (name-word 8) (named-object 7))
 ((number 8) (us-state 8) (name-word 8) (named-object 7))
 ((number 8) (us-state 8) (name-word 8) (named-object 7))
 (us-state 23)) )

|#

                              
      




;;;--------------------------------
;;; how well is our analysis doing
;;;--------------------------------

;; Uses sentence-parse-quality class

(defgeneric assess-sentence-analysis-quality (doc-element)
  (:documentation "Aggregate parse information about the sentence"))

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
    ;; rule out title-text and such that the caller could feed us
    (dolist (child (children doc-element))
      (let ((child-content (contents child)))
        (when (typep child-content 'sentence-parse-quality)
          (add-parse-quality-grades child-content content))))))

(defgeneric summarize-parse-performance (doc-element)
  (:documentation "Collect up the stats on parse-quality
    to pass to higher collector")
  (:method  ((e document-element))
    (let ((content (contents e))
          (children (children e)))
      (when (typep content 'sentence-parse-quality)
        (dolist (child children)
          (typecase child
            ((or paragraph title-text)
             (grade-sentence-tt-counts child content))
            ((or section section-of-sections article)
             (aggregate-parse-performance e content))))))))



;;;----------------------------------
;;; what did we find in the sentence
;;;----------------------------------

;;--- Uses entities-and-relations class

#| These are populated in record-sentence-model-data
which runs at the very end of each sentence's analysis
using data collected by identify-relations |#

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

#+ignore ;; conflicts with function in semantic-extraction
(defmethod get-mentions ((s sentence))
  (sentence-mentions s))

(defmethod sentence-mentions ((s sentence))
  (sentence-mentions (contents s)))

(defmethod sentence-mentions ((s string))
  (safe-parse s)
  (sentence-mentions (contents (sentence))))

(defmethod set-mentions ((s sentence))
  (let ((s-toc-ind (toc-index s))
        (init-mentions (find-all-mentions s)))
    (setf (gethash s *mentions-in-sentence*)
          (if (eq (search "NIL" s-toc-ind :test #'equalp) 0)
            ;; we're not in an article
            ;; need to be case-insensitive for when "nil" is lowercase...
            init-mentions
            (loop for mention in init-mentions
               collect
                 (let ((ment-art-loc (car (mentioned-in-article-where mention))))
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
                ;; "in order to" -- pw w/o referent, hyphen - referent is a word
                (individual-p (edge-referent first-edge))
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

(defun update-definite-determiner (edge)
  (declare (special *all-np-categories* *sentence-in-core*))
  (when (and *sentence-in-core*
             (category-p (edge-form edge))
             (member (cat-symbol (edge-form edge)) *all-np-categories*))
    (loop for pair in (pending-definite-references *sentence-in-core*)
       when (or (eq (second pair) (edge-left-daughter edge))
	       (eq (second pair) (edge-right-daughter edge)))
       do
	 (setf (second pair) edge)
	 (return t))))

(defmethod add-pending-partitive (quantifier (e edge) (s sentence))
  (let ((contents (contents s)))
    (push (list quantifier e) (pending-partitive-references contents))))

(defmethod pending-partitives ((s sentence))
  (pending-partitive-references (contents s)))
