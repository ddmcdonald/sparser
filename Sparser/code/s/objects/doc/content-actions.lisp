;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 2019-2020 David D. McDonald -- all rights reserved
;;;
;;;     File:  "content-actions"
;;;   Module:  "objects;doc;"
;;;  Version:  April 2020

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
        (aggregate-bio-terms p))
      (assess-sentence-analysis-quality p)
      (collect-text-characteristics p)
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

(defmethod after-actions ((a article))
  (when *apply-document-after-actions*
    (let ((*current-article* a))
      (declare (special *current-article*))
      (do-section-level-after-actions a)
      (consolidate-aggregations a))))

(defun do-section-level-after-actions (s)
  "Actions taken by everything about the level of a paragraph"
  (summarize-parse-performance s)
  (aggregate-text-characteristics s)
  (add-bio-term-counts s)
  (sort-bio-terms s (contents s))
  s)


      
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
  and returns its document index. This will always work
  provided we do the usual initializations: creating document
  objects for even the simplest analyses"
  ;; previously returned nil if *reading-populated-document*
  ;; was nil.
  (let ((s (identify-current-sentence t)))
    (when s (toc-index s))))


;;--- TOC string decoding

(defun explode-table-of-contents-string (toc-string) ; "0403-rxiv-40.2.p2"
  " <handle> . <section> . <paragraph> . <sentence> "
  (let* ((substrings (break-string-at toc-string #\.))
         (handle-name (first substrings))
         (sect-name (second substrings))
         (para-name (third substrings))
         (sent-name (fourth substrings)))
    (values handle-name sect-name para-name sent-name)))

(defun sentence-for-toc (toc-string)
  (multiple-value-bind (handle-name sect-name para-name sent-name)
      (explode-table-of-contents-string toc-string)
    (let* ((handle (intern (string-upcase handle-name) (find-package :sparser)))
           (article (get-article handle)))
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
      


;;;----------
;;; printing 
;;;----------

(defgeneric summary-document-stats (document-element &optional stream)
  (:documentation "Principally for information while debugging.
   This method is called when you specify :stats in a json article function
   such as run-json-article-from-handle")
  (:method ((a article) &optional stream)
    (unless stream (setq stream *standard-output*))
    (format stream "~&~%For ~a  (~a words)"
            a (insert-commas-into-number-string (token-count a)))
    (show-parse-performance a stream)
    (display-top-bio-terms a stream)))


(defun show-parse-performance (doc-element
                               &optional (stream *standard-output*))
  (let ((content (contents doc-element)))
    (if (not (typep content 'sentence-parse-quality))
      (format stream "~a does not record parse quality" doc-element)
      (let ((great (parses-with-one-edge content))
            (medium (medium-quality-parses content))
            (horrible (horrible-parses content)))
        (format stream "~&Parsing coverage: ~a (1 edge), ~a (2-5), ~a (> 5)~%"
                great medium horrible)))))



(defgeneric display-top-bio-terms (document-element &optional stream)
  (:documentation "Called as part of summary-document-stats on any article.
    Useful to get a set of what we're getting for an article without running
    the visual interface.")
  (:method ((a article) &optional stream)
    (declare (special *term-buckets*))
    (let* ((stream (or stream *standard-output*))
           (c (contents a)))
      (terpri stream)
      (loop for bucket in *term-buckets*
         as contents = (slot-value c bucket)
         when contents do
           (bio-term-summary c bucket 5 stream)))))

(defun bio-term-summary (container slot-name n stream)
  (let* ((contents (slot-value container slot-name))
         (top-n (take-first-n n contents)))
    (format stream "~&~a: ~a total entries~%"
            slot-name (length contents))
    (loop for entry in top-n
       do (summarize-term-entry entry stream))))

(defun summarize-term-entry (entry stream)
  (let ((term (car entry))
        (count (second entry))
        (mentions (third entry)))
    (format stream "~&~5T~a  ~a~%"
            (print-form-for-term term) count)))

(defgeneric print-form-for-term (term)
  (:method ((i individual))
    (or (value-of 'name i)
        (format nil "~a" i)))
  (:method ((name string))
    name))


;;;------------------------
;;; exploring the mentions
;;;------------------------

(defgeneric m-string (article bucket n)
  (:documentation "Get the nth item in this bucket (e.g. 'other)
    of this article and extract the text")
  (:method ((handle symbol) (slot symbol) (n integer))
    (m-string (get-article handle) slot n))
  (:method ((article article) (slot symbol) (n integer))
    (let* ((c (contents article))
           (entries (slot-value c slot))
           (entry (nth (1- n) entries))
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
        (subseq text (1- (car offsets)) (1- (cdr offsets)))))))

(defgeneric para-for-mention (mention)
  (:method ((n number))
    (para-for-mention (m# n)))
  (:method ((m discourse-mention))
    (let* ((paragraph (cdr (mentioned-in-article-where m)))
           (text (content-string paragraph)))
      (values paragraph text))))
