 ;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 2015 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "document"
;;;   Module:  "drivers;sources:"
;;;  Version:   April 2015

;; initiated 4/25/15 to driving reading from a fully populated
;; article object. 

(in-package :sparser)



(defmethod sweep-document ((doc document-element))
  (let ((*sweep-for-terminals* nil))
    (declare (special *sweep-for-terminals*))
    (read-from-document doc)))



(defgeneric read-from-document (source)
  (:documentation "Acquires the document from the source, sets it
   up to be navigated, manages the character source, initializes
   the necessary flags to ensure the document isn't gratuitously
   reclaimed. Arranges for the article to be returned as the value
   of the analysis. Shallow-binds the kind of processing to be
   done. "))

;; These are for debugging so we can pick up where we left off
(defvar *doc-objects* nil)
(defvar *article* nil)
(defvar *section-of-sections* nil)
(defvar *section* nil)
(defvar *paragraph* nil)

(defmethod read-from-document ((id integer))
  (unless (find-package :r3)
    (return-from read-from-document
      "R3 document reading machinery is not loaded"))
  (let ((reader (intern (symbol-name '#:make-sparser-doc-structure)
                        (find-package :r3))))
    (let* ((doc-objects (funcall reader id))
           (article (car doc-objects)))
      (setq *doc-objects* doc-objects
            *article* article) 
      (read-from-document article))))

(defmethod read-from-document ((a article))
  (setq *current-article* a) ;; sets up the function (article)
  (setf (contents a) (fresh-contents a))
  (let* ((sections (loop for child in (children a)
                    unless (typep child 'title-text)
                    collect child))
         (child (car sections))
         (remaining (cdr sections))
         its-children  previous-child  actual-children )
    ;; Go through the sections, find any section-of-sections
    ;; cases and if so create them and make them the new objects
    ;; the children of the article so we can handle them
    ;; correctly
    (loop
      (unless child
        (return))
      (setq its-children ;; the paragraphs or sections
            ;; that this section contains
            (children child))
      (when (some #'(lambda (s) (typep s 'section))
                  its-children)
        ;; make a section-of-sections for it
        (let ((ss (allocate-section-of-sections)))
          (setf (children ss) its-children)
          (setq child ss)))
      (push child actual-children)
      (when previous-child
        (setf (previous child) previous-child)
        (setf (next previous-child) child))
      (setq previous-child child)
      (setq child (car remaining)
            remaining (cdr remaining)))
    (setf (children a) (nreverse actual-children))

    ;; This is where we'd pick and choose which ones to do
    ;; //// set up to return this object via (analysis-core-return-value)
    (dolist (sec (children a))
      (setq *section* sec)
      (read-from-document sec))

    a))


(defmethod read-from-document ((ss section-of-sections))
  (setq *section-of-sections* ss)
  (let* ((subsections (children ss))
         (title? (when (typep (car subsections) 'title-text)
                   (car subsections))))
    (when title?
      (setf (title ss) (content-string title?))
      (setq subsections (cdr subsections)))
    (format t "~&~%--------- starting section of sections ~a~%" ss)
    (let ((section (car subsections))
          (remaining (cdr subsections))
          previous-section)
      (loop
        (unless section (return))
        (read-from-document section)
        (setq previous-section section)
        (setq section (car remaining)
              remaining (cdr remaining))
        (when section
          (setf (previous section) previous-section)
          (setf (next previous-section) section)))
      ;;/// aggregation goes here
      (format t "~&~%--------- finished section of sections ~a~%" ss))))


(defmethod read-from-document ((s section))
  (setq *current-section* s)
  ;;//// find a good contents for these
  ;;/// previous/next also not set, and there's a title-text
  ;;  among the children
  (format t "~&~%--------- starting section ~a~%" s)
  (let* ((all-children (children s))
         (paragraphs (loop for child in all-children
                       when (typep child 'paragraph)
                       collect child))
         (paragraph (car paragraphs))
         (remaining (cdr paragraphs))
         previous-paragraph )
    (loop
      (unless paragraph
        (return))
      (setq *paragraph* paragraph)
      (catch 'do-next-paragraph
        (read-from-document paragraph))
      (setq previous-paragraph paragraph)
      (setq paragraph (car remaining)
            remaining (cdr remaining))
      ;;/// sentence->paragraph aggregation goes here. 
      (when paragraph
        (setf (previous paragraph) previous-paragraph)
        (setf (next previous-paragraph) paragraph)))
    ;;/// section aggregation goes here. 
    ;;(break "finished section")
    (format t "~%--------- finished section ~a~%~%" s)))

(defmethod read-from-document ((p paragraph))
  ;;/// read thuogh do-document-as-stream-of-files
  ;;/// do we need a specialized analyser?
  ;;    lookup-the-kind-of-chart-processing-to-do
  ;;/// review per-article-initializations
  (format t "~&~%--------- starting paragraph ~a~%" p)
  (let ((*reading-populated-document* t)
        (*recognize-sections-within-articles* nil) ;; turn of doc init
        (*accumulate-content-across-documents* t)) ;; doesn't clear history??
    (declare (special *reading-populated-document*
                      *recognize-sections-within-articles*
                      *accumulate-content-across-documents*))
    (setq *current-paragraph* p)
    ;;///// needs contents -- look at make-sentence-container
    (let ((text (content-string p)))
      (initialize-sentences) ;; set up or reuse the 1st sentence
      ;; lifted from analyze-text-from-string 
      (establish-character-source/string text)
      (analysis-core))))

        