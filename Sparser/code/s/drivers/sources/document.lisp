 ;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 2015 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "document"
;;;   Module:  "drivers;sources:"
;;;  Version:   May 2015

;; initiated 4/25/15 to driving reading from a fully populated
;; article object. Continually modifying/adding routines through
;; 5/18/15. 
;; 6/8/2015 better rejection of sections that shouldn't be parsed

(in-package :sparser)

;;;---------
;;; globals
;;;---------

;; These are for debugging so we can pick up where we left off
(defvar *doc-objects* nil)
(defvar *article* nil)
(defvar *section-of-sections* nil)
(defvar *section* nil)
(defvar *paragraph* nil)

(defparameter *show-section-printouts* nil
  "Tracks entering and exiting sections of any type
  including paragraphs")

;;;-------------------------------------------------
;;; For now -always- do a sweep before doing a read
;;;-------------------------------------------------

(defparameter *show-article-progress* t
  "Announce what article we're working on
")

(defmethod sweep-document ((doc document-element))
  "Creates the document objects, including the sentences, 
   but does no analysis at all. Uses read-from-document
   to walk the document -- the same method as used to
   parse it -- but the sweep-for-terminals flag must be
   up for the initiate-successive-sweeps code to run the
   parsing, and we dynamically bind it here to nil."
  (let ((*sweep-for-terminals* nil)
        (*sections-to-ignore* nil))
    (declare (special *sweep-for-terminals* *sections-to-ignore*))
    (when *show-article-progress*
      (format t "Sweeping document ~a~&" (name doc)))
    (read-from-document doc)))


;;;-------------------------------------------------
;;; arranging to ignore certain (toplevel) sections
;;;-------------------------------------------------
;;//// needs a setter

(defparameter *sections-to-ignore* 
  '("method"
    "authors' contributions"
    "competing interests"
    "experimental procedures"
    "funding"
    "materials and methods"
    "methods summary"
    "methods")
  
  
  "Contains a list of section titles or title fragments that
  name sections we want to skip over")

(defun ignore-this-document-section (section)
  (when *sections-to-ignore*
    (unless (typep section 'paragraph) ;; happens sometimes
      (when (slot-boundp section 'title)
        ;(push-debug `(,section))
        ;(error "title of section hasn't been set"))
        (let ((title-object (title section)))
          (unless title-object
            (push-debug `(,section))
            (error "Section somehow doesn't have a title object"))
          (let ((title-string 
                 (string-downcase
                  (typecase title-object
                    (string title-object)
                    (string-holder (content-string title-object))
                    (otherwise
                     (push-debug `(,title-object))
                     (error "Unexpected type of title: ~a~%~a"
                            (type-of title-object) title-object))))))
            ;;(format t "~&---- Section title: ~S~&" title-string)
            (dolist (ignore-substring *sections-to-ignore* nil)
              (when (search ignore-substring title-string
                            :test #'equalp)
                (when *show-section-printouts*
                  (format t "~&~%------- Ignoring section ~a --------" section))
                (return t)))))))))


;;;--------------------------------
;;; sections-of-sections detection
;;;--------------------------------

(defun pre-sweep-for-embedded-sections (a)
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
    (when (typep child 'paragraph)
      ;; 3058384 starts out as <body> <p> ... before it gets to
      ;; a proper section.
      (return-from pre-sweep-for-embedded-sections nil))
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
          (let ((title? (when (typep (car its-children) 'title-text)
                          ;;/// searching for it would be more robust
                          (car its-children))))
            (if title?
              (setf (title ss) title?)
              (setf (title ss) (make-unknown-title)))
            (setq child ss))))
      (push child actual-children)
      (when previous-child
        (setf (previous child) previous-child)
        (setf (next previous-child) child))
      (setq previous-child child)
      (setq child (car remaining)
            remaining (cdr remaining)))

    (setf (children a) (nreverse actual-children))))

(defun make-unknown-title ()
  (let ((tt (make-instance 'title-text)))
    (setf (content-string tt) "Couldn't find title")))


;;;------------------------------------------
;;; document reading (of pre-swept documents
;;;------------------------------------------

(defgeneric read-from-document (source)
  (:documentation "Acquires the document from the source, sets it
   up to be navigated, manages the character source, initializes
   the necessary flags to ensure the document isn't gratuitously
   reclaimed. Arranges for the article to be returned as the value
   of the analysis. Shallow-binds the kind of processing to be
   done. "))



(defmethod read-from-document ((a article))
  (setq *current-article* a) ;; sets up the function (article)
  (unless *sweep-for-terminals*
    (pre-sweep-for-embedded-sections a))
  (fresh-contents a)
  (when (and *show-article-progress*
             *sweep-for-terminals*)
      (format t "read-from-document ~a~&" (name a)))

  (dolist (sec (children a))
    (unless (ignore-this-document-section sec)
      (setq *section* sec)
      (catch 'do-next-paragraph ;; article 3058384 starts with paragraphs
        (read-from-document sec))))
  (after-actions a)
  a)

(defmethod read-from-document ((ss section-of-sections))
  (setq *section-of-sections* ss)
  (fresh-contents ss)
  (let* ((subsections (children ss))
         (title? (when (typep (car subsections) 'title-text)
                   (car subsections))))
    (when title?
      (setf (title ss) (content-string title?))
      (setq subsections (cdr subsections)))
    (when *show-section-printouts*
      (format t "~&~%--------- starting section of sections ~a~%" ss))
    (let ((section (car subsections))
          (remaining (cdr subsections))
          previous-section)
      (loop
        (unless section (return))
        (catch 'do-next-paragraph
          (read-from-document section))
        (setq previous-section section)
        (setq section (car remaining)
              remaining (cdr remaining))
        (when section
          (setf (previous section) previous-section)
          (setf (next previous-section) section)))
      (after-actions ss)
      (when *show-section-printouts*
        (format t "~&~%--------- finished section of sections ~a~%" ss)))))


(defmethod read-from-document ((s section))
  (setq *current-section* s)
  (fresh-contents s)
  ;;/// previous/next also not set, and there's a title-text
  ;;  among the children
  (when *show-section-printouts*
    (format t "~&~%--------- starting section ~a~%" s))
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
      (after-actions paragraph)
      (setq previous-paragraph paragraph)
      (setq paragraph (car remaining)
            remaining (cdr remaining))
      ;;/// sentence->paragraph aggregation goes here. 
      (when paragraph
        (setf (previous paragraph) previous-paragraph)
        (setf (next previous-paragraph) paragraph)))
    ;;/// section aggregation goes here. 
    ;;(break "finished section")
    (after-actions s)
    (when *show-section-printouts*
      (format t "~%--------- finished section ~a~%~%" s))))


(defmethod read-from-document ((p paragraph))
  ;;/// read thuogh do-document-as-stream-of-files
  ;;/// do we need a specialized analyser?
  ;;    lookup-the-kind-of-chart-processing-to-do
  ;;/// review per-article-initializations
  (when *show-section-printouts*
    (format t "~&~%--------- starting paragraph ~a~%" p))
  (let ((*reading-populated-document* t)
        (*recognize-sections-within-articles* nil) ;; turn of doc init
        (*accumulate-content-across-documents* t)) ;; doesn't clear history??
    (declare (special *reading-populated-document*
                      *recognize-sections-within-articles*
                      *accumulate-content-across-documents*))
    (setq *current-paragraph* p)
    (fresh-contents p)
    (let ((text (content-string p)))
      (initialize-sentences) ;; set up or reuse the 1st sentence
      ;; lifted from analyze-text-from-string 
      (establish-character-source/string text)
      (analysis-core))))


#+ignore ;; nice idea, but would need pretty drastic
;; makeover as of 5/12/15
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


        