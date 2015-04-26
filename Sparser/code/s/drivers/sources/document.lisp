;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 2015 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "document"
;;;   Module:  "drivers;sources:"
;;;  Version:   April 2015

;; initiated 4/25/15 to driving reading from a fully populated
;; article object. 

(in-package :sparser)



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
      ;;/// set the pubmed id
      (read-from-document article))))

(defmethod read-from-document ((a article))
  (setq *current-article* a) ;; sets up (article)
  (setf (contents a) (fresh-contents a))
  (let ((sections (children a)))
    ;; This is where we'd pick and choose which ones to do
    ;; //// set up to return this object via (analysis-core-return-value)
    ;;//// the previous/next aren't set -- could do that here
    (dolist (sec sections)
      (setq *section* sec)
      (read-from-document sec))))

(defmethod read-from-document ((s section))
  (setq *current-section* s)
  ;;//// find a good contents for these
  ;;/// previous/next also not set, and there's a title-text
  ;;  among the children
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
      (break "finished one para: ~a" previous-paragraph))
    (break "finished section")))

(defmethod read-from-document ((p paragraph))
  ;;/// read thuogh do-document-as-stream-of-files
  ;;/// do we need a specialized analyser?
  ;;    lookup-the-kind-of-chart-processing-to-do
  ;;/// review per-article-initializations
  (let ((*reading-populated-document* t)
        (*recognize-sections-within-articles* nil) ;; turn of doc init
        (*accumulate-content-across-documents* t)) ;; doesn't clear history??
    (declare (special *reading-populated-document*
                      *recognize-sections-within-articles*
                      *accumulate-content-across-documents*))
    (setq *current-paragraph* p)
    ;;///// needs contents
    (let ((text (content-string p)))
      (initialize-sentences) ;; set up the 1st sentence
      ;;(break "text of length ~a" (length text))
      ;; lifted from analyze-text-from-string 
      (set-initial-state :name 'text-string) ;;/// still needed?
      (establish-character-source/string text)
      (analysis-core))))

        