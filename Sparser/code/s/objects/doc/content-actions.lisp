;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 2019-2023 David D. McDonald -- all rights reserved
;;;
;;;     File:  "content-actions"
;;;   Module:  "objects;doc;"
;;;  Version:  October 2023

#| Created 8/27/19 to move general action out of content-methods.lisp
and make that file easier to understand. |#

(in-package :sparser)

;;;---------------------------------------------------
;;; Action hook for after a document element finishes
;;;---------------------------------------------------

(defparameter *debugging-document-structure* nil
  "Usually used to inhibit cleanup steps that remove data")

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
        (when (typep (contents p) 'aggregated-bio-terms)
          (aggregate-bio-terms p)))
      (assess-sentence-analysis-quality p)
      (collect-text-characteristics p)
      (collect-noted-items p)
      (unless *debugging-document-structure*
        (make-mentions-long-term))))) ; zero's the list in the lattice

(defmethod after-actions ((te title-text))
  (when *apply-document-after-actions*
    ;;/// should it also bind *current-paragraph* ?
    (make-mentions-long-term)
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

(defun do-section-level-after-actions (s)
  "Actions taken by everything about the level of a paragraph"
  (summarize-parse-performance s)
  (aggregate-text-characteristics s)
  (when (typep (contents s) 'aggregated-bio-terms)
    (add-bio-term-counts s)
    (sort-bio-terms s (contents s)))
  (when (typep (contents s) 'accumulate-items)
    (aggregate-noted-items s))
  s)

(defmethod after-actions ((a article))
  (when *apply-document-after-actions*
    (let ((*current-article* a))
      (declare (special *current-article* *compute-items-contexts*))
      (summarize-parse-performance a)
      (aggregate-text-characteristics a)
      (when (typep (contents a) 'aggregated-bio-terms)
        (consolidate-aggregations a))
      (when (typep (contents a) 'accumulate-items)
        (aggregate-noted-items a)
        (consolidate-notes a)
        (when *compute-items-contexts*
          (apply-context-predicates a)))
      a)))


      
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
       (unless (and (slot-boundp s 'next)
                    (next s)) ;; had a NULL next in article 23 of June
         (return))
       (setq next (next s))
       (when (string-equal (sentence-string next) "")
         (return))
       (setq s next)
       (push s sentences))
    (nreverse sentences)))


;;;-------------------
;;; table of contents
;;;-------------------

;; Based on the indexed class

(defgeneric set-document-index (doc-element number-or-letter)
  (:documentation "Sets the identifying index and accumulated
     table of contents on the document element (it's parents)
     if that has not already been done. 
     Called by the read-from-document for each element type."))

(defmethod set-document-index (element index) ;; "T" case
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
      (setf (doc-index p) index)
      (setf (toc-index p)
            (format nil "~a.~a" parent-toc index)))))

(defmethod set-document-index ((s sentence) (index integer))
  (unless (toc-index s)
    (let* ((parent (parent s))
           (parent-toc (toc-index parent)))
      (setf (doc-index s) index)
      (setf (toc-index s)
            (format nil "~a.s~a" parent-toc index)))))


(defun location-in-article-of-current-sentence ()
  "Looks up the sentence we are presently working on
  and returns its document index. This will always work
  provided we do the usual initializations, i.e. creating
  document objects for even the simplest analyses"
  ;; previously returned nil if *reading-populated-document*
  ;; was nil.
  (let ((s (identify-current-sentence t)))
    (when s (toc-index s))))


;;--- TOC string decoding

;; from ddm-util
;;; copied from Denys, and modified...
(defun break-string-at (string break-char)
  (loop
    for start0 = 0 then end
    and end = 0
    while (setq start0 (position-if-not
		       #'(lambda (char) (char= char break-char))
		       string :start start0))
    do    (setq end (position-if
		     #'(lambda (char) (char= char break-char))
		     string :start start0))
    collecting (subseq string start0 end)
        while end))

(defun explode-table-of-contents-string (toc-string) ; "0403-rxiv-40.2.p2"
  " <handle> . <section> . <paragraph> . <sentence> "
  (let* ((substrings (break-string-at toc-string #\.))
         (handle-name (first substrings))
         (sect-name (second substrings))
         (para-name (third substrings))
         (sent-name (fourth substrings)))
    (values handle-name sect-name para-name sent-name)))

(defun sentence-for-toc (toc-string &optional article)
  (multiple-value-bind (handle-name sect-name para-name sent-name)
      (explode-table-of-contents-string toc-string)
    (let* ((handle (intern (string-upcase handle-name) (find-package :sparser)))
           (article (or article (get-article handle))))
      (unless article (error "Can't access article with handle ~a" handle))
      (let* ((section (get-toc-child article sect-name))
             (paragraph (get-toc-child section para-name)))
        (get-toc-child paragraph sent-name)))))


(defgeneric get-toc-child (parent child)
  (:documentation "Used in deploying the information in a table of contents
   string to access the elements of a document. Each level knows how its
   component of the TOC string is decoded")

  (:method ((a article) (section string)) ; "2"
    (let ((n (read-from-string section)))
      (nth-child n a)))

  (:method ((s section) (paragraph string)) ; "p2"
    (let* ((minus-the-p (subseq paragraph 1))
           (n (read-from-string minus-the-p)))
      (nth-child n s)))

  (:method ((p paragraph) (sentence string)) ; "s1"
    (let* ((minus-the-s (subseq sentence 1))
           (n (read-from-string minus-the-s))
           (s1 (children p)))
      (if (= n 1)
        s1
        (nth-next s1 n)))))



;;;-----------------------------------
;;; printing simple lists of entities
;;;-----------------------------------

;;(defgeneric print-entity-list (list &key stream count index?)
;;  )

(defun pp-entity-list (list &key stream count index?)
  "The list will be objects of the same type, so dispatch on that
 and collect the print forms to use. 'Count' will limit how many
 we present. 'Index? will add numbers for nth-based access."
  )


;;;------------------------------
;;; printing document statistics
;;;------------------------------

(defgeneric summary-document-stats (document-element &optional stream)
  (:documentation "Principally for information while exploring.
   This method is called when you specify :stats in a json article function
   such as run-json-article-from-handle")
  (:method ((a article) &optional stream)
    (declare (special *minimal-reporting* *show-parser-performance*
                      *show-noted-categories* *show-motif-terms*
                      *show-runtime-stats*))
    (unless stream (setq stream *standard-output*))
    
    (when *show-runtime-stats*
      (report-time-to-read-article a stream))
    (unless *minimal-reporting*
      (format stream "~&~%For ~a" a)
      (when *show-parser-performance*
        (show-parse-performance a stream))
      (when *print-bio-terms*
        (display-top-bio-terms a stream))
      (when *show-noted-categories*
        (show-noted-categories a))
      (when *show-motif-terms*
        (show-motif-term-context a)))))


(defun show-parse-performance (doc-element &optional (stream *standard-output*))
  "Report the crude parse-quality stats for this particular element"
  (declare (special *readout-segments-inline-with-text* *show-article-progress*))
  (let ((content (contents doc-element)))
    (if (not (typep content 'sentence-parse-quality))
      (format stream "~a does not record parse quality" doc-element)
      (let ((great (parses-with-one-edge content))
            (medium (medium-quality-parses content))
            (horrible (horrible-parses content)))
        (cond
          ((typep doc-element 'article)
           (format stream "~&Parsing coverage: ~a (1 edge), ~a (2-5), ~a (> 5)~%"
                   great medium horrible))
          ((typep doc-element 'paragraph)
           (when *show-article-progress*
             (format  stream "~&~a, ~a, ~a~%" great medium horrible)))
          (*readout-segments-inline-with-text* ;; proxy for with-total-quiet
           (format stream "~&~%")))))))


;;--- notes, word-spotting

(defun show-noted-categories (document-element &optional detail? (stream *standard-output*))
  (declare (special *abbreviated*))
  (let ((group-instances (items (contents document-element))))
    (if *abbreviated*
      (let ((index 0))
        (loop for group in group-instances
           do (progn
                (format stream "~a: ~a  " (name group) (group-count group))
                (when (= 5 (incf index)) (then (terpri stream) (setq index 0))))))
      (loop for i in group-instances
         ;; one per-line
         do (summarize-note-group i stream)))))

(defun summarize-note-group (group stream)
  (format stream "~&~a: ~a" (name group) (group-count group)))


(defun show-motif-term-context (article &optional (stream *standard-output*))
  "Go through the note-group-instance objects that were picked out for
   this application and print out their contents."
  (declare (special #| *germaine-spotter-group-instances*|# *abbreviated*))
  (let ((group-instances (germaine-items (contents article))))
    (unless group-instances
      (format stream  "~&No motif triggers in article~%"))
    (when group-instances
      (if *abbreviated*
        (show-abbreviated-motif-edge-contexts article group-instances stream)
        (loop for group in group-instances
           do (show-motif-edge-contexts group stream))))))

(defgeneric show-motif-edge-contexts (group &optional stream)
  (:method ((group note-group-instance) &optional stream)
    (unless stream (setq stream *standard-output*))
    (format stream "~&~%For ~a~%" (name group))
    (let ((entries (note-instances group)))
      (loop for note-entry in entries
         do (show-edge-records note-entry)))))

(defgeneric show-abbreviated-motif-edge-contexts (article group-instances &optional stream)
  (:documentation "Gets data for the whole set of germaine groups
    and reports it compactly.")
  (:method ((article article) (groups list) &optional stream)
    (declare (special *motif-configurations-stream*))
    (unless stream (setq stream *standard-output*))
    (multiple-value-bind (configurations
                          record-count categorized-count
                          group-count uncategoried-records)
        (edge-record-summary groups)
      (if (null categorized-count)
        (format stream "~&No Functional categorization for any of ~a instances~%"
                record-count)
        (format stream "~&Functional categorizations for ~a out of ~a instances~%"
                categorized-count  record-count))
      (when configurations
        (let ((index 0))
          (loop for config in configurations
             do (progn
                  (format stream "  ~a" config)
                  (when (= 4 (incf index)) (terpri stream) (setq index 0))))))

      (when uncategoried-records
        (if *motif-configurations-stream*
          (let ((stream *motif-configurations-stream*))
            (format stream "~&~%Article ~a~%Uncategorized instances:"
                    (name article))
            (loop for record in uncategoried-records
               do (report-edge-record record stream)))
          (else
            (format stream "~&Uncategorized instances:")
            (loop for record in uncategoried-records
               do (report-edge-record record stream))))))))



;;--- bio-terms

(defgeneric display-top-bio-terms (document-element &optional stream)
  (:documentation "Called as part of summary-document-stats on any article.
    Useful to get a set of what we're getting for an article without running
    the visual interface.")
  (:method ((a article) &optional stream)
    (declare (special *term-buckets-to-show*))
    (let* ((stream (or stream *standard-output*))
           (c (contents a)))
      (terpri stream)
      (loop for bucket in *term-buckets-to-show*
         as contents = (slot-value c bucket)
         when contents do (bio-term-summary c bucket 5 stream)))))

(defun bio-term-summary (container slot-name n stream)
  (let* ((contents (slot-value container slot-name))
         (top-n (take-first-n n contents)))
    (format stream "~&~a: ~a total entries~%"
            slot-name (length contents))
    (loop for entry in top-n
       do (summarize-term-entry entry stream))))

#| The entries for the slots in the aggregated-bio-terms class
are created by an interior function of aggregate-terms in content-methods.lisp.
They are three element lists, where the first is the individual,
the second is the number of times it was mentioned, and the third
is the actual list of mentions.

("Slovakia" 3
 (#<m:34581 i2056 Slovakia cavojova_covid.4.p4.s3 411-420>
  #<m:33229 i2056 Slovakia cavojova_covid.3.p10.s3 454-462>
  #<m:31281 i2056 Slovakia cavojova_covid.2.p8.s11 1036-1044>))

Summarize-term-entry uses print-for-for-term to render the
individual as a string.  |#

(defun summarize-term-entry (entry stream &optional index)
  (let ((term (car entry))
        (count (second entry))
        (mentions (third entry)))
    (if index
      (format stream "~&~a~5T~a  ~a~%"
              index (print-form-for-term term) count)
      (format stream "~&~5T~a  ~a~%"
              (print-form-for-term term) count))))

(defgeneric print-form-for-term (term)
  (:method ((i individual))
    (or (value-of 'name i)
        (format nil "~a" i)))
  (:method ((name string))
    name))


;;;------------------------
;;; exploring the mentions
;;;------------------------

(defgeneric bucket-contents (article bucket)
  (:documentation "Retrieve the value of the 'bucket' field
    of the articles contents object and return the list
    of mentions that it contains")
  (:method ((article article) (slot symbol))
    (unless (memq slot *term-buckets*)
      (error "Spelling? ~a is not defined in *term-buckets*" slot))
    (slot-value (contents article) slot)))


(defgeneric print-bucket-contents (article bucket &key count)
  (:documentation "Print the contents of this bucket.
    Either 'count' of them or all if count is nil.
    Include an index with each entry (zero-based) to make
    it easy to examine individual mentions")
  (:method ((article article) (slot symbol) &key count)
    (let* ((c (contents article))
           (entries (slot-value c slot))
           (stream *standard-output*)
           (index -1))
      (unless count
        (loop for entry in entries
           do (summarize-term-entry entry stream (incf index)))))))


(defgeneric m-string (article bucket n)
  (:documentation "Get the nth item in this bucket (e.g. 'other)
    of this article and extract the text")
  (:method ((handle symbol) (slot symbol) (n integer))
    (m-string (get-article handle) slot n))
  (:method ((article article) (slot symbol) (n integer))
    (let* ((c (contents article))
           (entries (slot-value c slot))
           (entry (nth n entries))
           (mentions (third entry))
           (m (car mentions))
           (offsets (mention-offsets m))
           (paragraph (cdr (mentioned-in-article-where m)))
           (text (content-string paragraph)))
      (if (string-equal "" text)
        (format nil "no content in ~a" paragraph)            
        (subseq text (1- (car offsets)) (1- (cdr offsets)))))))
  

(defgeneric bucket-entry (article bucket n)
  (:documentation "Return the individual for nth item in this bucket")
  (:method ((handle symbol) (slot symbol) (n integer))
    (bucket-entry (get-article handle) slot n))
  (:method ((article article) (slot symbol) (n integer))
    (let* ((c (contents article))
           (entries (slot-value c slot))
           (entry (nth (1- n) entries))
           (individual (car entry)))
      individual)))

(defgeneric string-for-mention (mention)
  (:method ((n number))
    (string-for-mention (m# n)))
  (:method ((m discourse-mention))
    (let* ((paragraph (and
                       (slot-boundp m 'location-in-article)
                       (cdr (mentioned-in-article-where m))))
           (text (when paragraph (content-string paragraph)))
           (offsets (mention-offsets m)))
      (if (or (null paragraph) (string-equal "" text))
          (format nil "no content in ~a" paragraph)
          (cond ((and (> (length text) 0)
                      (<= (1- (cdr offsets))
                         (length text)))
                 (subseq text (if (zerop (car offsets))
                                  (car offsets)
                                  (1- (car offsets)))
                         (1- (cdr offsets))))
                (t
                 (warn "mention ~s with offsets ~s~% invalid for string ~s"
                       m offsets text)
                 (format nil
                         "***OUT OF RANGE STRING*** for mention #~a"
                         (mention-uid m))))))))

(defgeneric para-for-mention (mention)
  (:method ((n number))
    (para-for-mention (m# n)))
  (:method ((m discourse-mention))
    (let* ((paragraph (cdr (mentioned-in-article-where m)))
           (text (content-string paragraph)))
      (values paragraph text))))


(defgeneric first-n-types-in-bucket (article bucket n)
  (:method ((article article) (slot symbol) (n integer))
    (let* ((bucket-contents (bucket-contents article slot))
           (top-n (take-first-n n bucket-contents)))
      (loop for b in top-n
         do (describe-bucket-entry b)))))

(defun describe-bucket-entry (entry &optional (stream *standard-output*))
  "Similar to summarize-term-entry but intended to convey more information.
   We print the individual and its count followed by the first M categories
   in its superc chain (super-categories-of)"
  (let* ((term (car entry))
         (count (second entry))
         (mentions (third entry))
         (m1 (car mentions))
         (i (if (and (slot-boundp m1 'ci) ; copied from aggregation-target
                      (contextual-description m1)) ; it might be bound but nil
               (contextual-description m1)
               (base-description m1)))
         (first-n-supercs (bottom-n-supercs i 5))
         (subc-names (loop for c in first-n-supercs collect (cat-name c))))
    (format stream "~&~a ~a~12,4T ~{ ~a~}" count i (cdr subc-names))
    m1))

