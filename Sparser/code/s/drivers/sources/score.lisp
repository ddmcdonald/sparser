4;;; -*- Mode: LISP; Syntax: Common-Lisp; Package: CLIC -*-
;;; Copyright (c) 2020 Smart Information Flow Technologies
;;;
;;;     File:  "score"
;;;   Module:  "drivers;sources:"
;;;  Version:  August 2020

(in-package :sparser)

(defparameter *score-json* "~/temp/pre_remote_dicts/"
  "Directory that holds the JSON files")

(defun collect-score-json (&optional (dir *score-json*))
  "Read out the directory into the standard global"
  (let ((pathnames
         (directory (merge-pathnames "*.json" dir))))
    (setf *json-files-to-read* pathnames)
    (length pathnames)))

(defparameter *bad-score-files*
  '("Alyami_covid_yl789" ; Unable to encode character 56319 as :utf-8
    ))


(defun run-nth-score-article (n)
  "Process the nth ('1' -> nth of 0) json article in the directory"
  (declare (special *json-files-to-read*))
  (unless *json-files-to-read*
    (error "Run collect-score-json"))
  (let* ((pathname (nth (1- n) *json-files-to-read*))
         (filename (pathname-name pathname))
         (handle (subseq filename 0 (position #\_ filename :from-end t))))
    (when (member filename *bad-score-files* :test #'string-equal)
      (format t "~&Ignoring bad file: ~a" filename)
      (return-from run-nth-score-article nil))
    (format t "~&~%Reading ~a~%" filename)
    (let ((sexp (cl-json::decode-json-from-source pathname)))
      (print-score-block-texts sexp)
      (when nil
      (let ((article (make-instance 'article)))
        (setf (name article) (intern handle (find-package :sparser)))
        (setf (article-source article) pathname)
        (collect-score-json-paragraphs article sexp)
        article )))) )


(defvar *sequence-of-block-texts* "cache for debugging")

(defun print-score-block-texts (sexp)
  "Used for skimming to collect title labels & such.
   Best used in a line-truncating repl."
  (let ((blocks (locate-blocks-in-json sexp)))
    (loop for b in blocks do (print (locate-text-in-score-block b)))
    (let ((texts
           (loop for b in blocks
              collect (locate-text-in-score-block b))))
      (setq *sequence-of-block-texts* texts)
      (length texts))))


(defun collect-score-json-paragraphs (article sexp)
  "Loop through the list of paragraph objects and see if we can
   identify larger-scale section-type structure"
  (let ((blocks (locate-blocks-in-json sexp)))
    (let ((paragraphs
           (loop for b in blocks
              as text = (locate-text-in-score-block b)
              collect (make-score-paragraph text))))
      (length paragraphs))))

(defvar p-text "" "cache the sexp of the block we're working on")
(defvar *p* nil "cache the paragraph we've constructed")
(defun test-sp (n) ; 'test score paragraph
  (setq p-text (nth n *sequence-of-block-texts*))
  (format t "~&~a: ~s" n p-text)
  (format t "~%~a chars" (length p-text))
  (let ((p (make-score-paragraph p-text)))
    (setq *p* p)
    (format t "~&~a" p)
    p))



(defclass score-paragraph (paragraph)
  ((flag :initarg :flag :accessor flag)
   (arg-alist :initform nil :accessor arg-alist))
  (:documentation "Superclass to group the paragraphs that
 are used for side-effects during document construction"))

(defclass heading-paragraph (score-paragraph)
  ()
  (:documentation ""))

(defclass action-paragraph (score-paragraph)
  ()
  (:documentation "Assembly level should take some action,
 but otherwise this isn't a content paragraph"))

(defclass null-paragraph (score-paragraph)
  ()
  (:documentation "Known case where we should throw this block out"))

(defmethod print-object ((p score-paragraph) stream)
  (print-unreadable-object (p stream :type t)
    (format stream "~a" (flag p))))

(defclass text-paragraph (paragraph)
  ((prefix :initarg :s :accessor prefix))
  (:documentation "Since the printer for paragraphs proper used
 chart positions and TOC, we need something to use in debugging
 that we can trace."))

(defmethod print-object ((p text-paragraph) stream)
  (print-unreadable-object (p stream)
    (format stream "~a..." (prefix p))))



(defun make-score-paragraph (text)
  "Many 'paragraphs' are actually section headings.
   Try to detect these and use the specialized paragraph object
   for them. There are a lot of other 'small' paragraph texts that
   may play substantive roles in the structure of the document,
   perhaps as table column headings. Try to identify these and
   make them specialized paragraphs as well.
     The point is to make it easier for the sweep over these
   paragraphs to impose a reasonable document structure."
  (let ((length (length text))
        p )
    (multiple-value-bind (keyword residue)
        (detect-score-title text)
      (unless keyword
        ;; it's either vanila text or a new short heading
        (if (likely-short-header length text)
          (then
            (setq p (make-instance 'title-text)) ;;/// correct parsing behavior?
            (setf (content-string p) text))
          (else
            (setq p (make-instance 'text-paragraph))
            (setf (content-string p) text)
            (let ((size (if (> 12 length) length 12)))
              (setf (prefix p) (subseq text 0 size)))))
        p)
        
      (when keyword
        (case keyword
          (:running-head
           (setq p (make-instance
                    'action-paragraph :flag :running-head))
           (setf (arg-alist p)
                 `(:header ,residue)))
          ((:table :figure :model)
           (setq p (make-instance 'heading-paragraph :flag keyword))
           (let ((index-of-space (position #\space text)))
             (when index-of-space
               (let ((length-after (length (subseq text index-of-space))))
                 (if (< length-after 4)
                   (setf (arg-alist p) `(:number ,residue))
                   (let* ((next-space (position #\space residue))
                          (content (subseq residue next-space))
                          (number (subseq residue 0 next-space)))
                     (setf (arg-alist p) `(:number ,number
                                           :caption ,content))))))))
          (otherwise
           (setq p (make-instance
                    'heading-paragraph :flag keyword))
           ;; is a residue evidence of getting it wrong?
           ))))
    p))

(defun likely-short-header (length text)
  "A (sub)section header is a label that doesn't decompose into
   useful parts that we'd want to model independently of its identify.
   They run around a dozen characters and don't have any structural
   elements: commas, colons"
  (when (< length 35)
    (null (or (position #\, text)
              (position #\: text)
              (position #\. text)
              (position #\- text)))))

;;--- section titles

(defparameter *score-sect-titles*
  '("Running Head"
    "Abstract"
    "Acknowledgement"
    "aim"
    "Authors"
    "Background"
    "Competing interest statement"
    "Conclusion"
    "Correspondant Author"
    "Data"
    "Data Analysis"
    "Discussion"
    "Figure"
    "Footnotes"
    "Introduction" ;; can be line-final -- on keywords line
    "Keywords" 
    "Measures"
    "Method"
    "Method and Results"
    "Model"
    "Original article"
    "Participants"
    "Participants and Procedures" ; subtitle
    "Procedures"
    "Results"
    "References" ;; can be line-final
    "Variables" 
    "Table" ; with colon or period
    "Title" ; with colon in-line
    ))

(defparameter *score-set-titles-taking-number*
  '("aim" "Figure" "Model" "Table"))

#| A line may just have a number on it #1 -- "9"
|#

(defun detect-score-title (text)
  "Loop over the titles in *score-sect-titles*. If one of them matches
   in this text, return it (as a keyword), along with any residue
   that follows in the text"
  (let ( keyword residue )
    (dolist (title *score-sect-titles* nil)
      (multiple-value-setq (keyword residue)
        (test-score-title title text))
      (when keyword
        (return-from detect-score-title (values keyword residue))))))

(defun test-score-title (title text)
  "Is the text long enough? Does its prefix match? Is there residue to trim?
   Both arguments are strings"
  ;;/// much of this can be precomputed and stashed on a massaged
  ;;  version of the list of titles
  (let ((text-length (length text))
        (title-length (length title)))
    (when (>= text-length title-length)
      (let ((index (search title text :test #'string-equal)))
        (when index ; // zero is the beginning of the line
          (let ((more? (subseq text title-length)))
            (if (string-equal more? "")
              (setq more? nil)
              (setq more? (string-left-trim '(#\space #\: )
                                            more?)))
            (let ((key-name (string-upcase
                             (substitute #\- #\space title))))
              
              (values (intern key-name (find-package :keyword))
                      more?))))))))



;;--- walking the JSON s-expression

(defvar *current-score-json* nil "cache the one we're working on")

(defun locate-blocks-in-json (sexp)
  "Walk through the sexp version of the JSON and return
   the succession of text bocks as a list of sexp"
  (setq *current-score-json* sexp)
  (let ((sub1 (cadr (assq :paper--content sexp))))
    (let ((blocks (cdr sub1)))
      blocks)))

(defvar *current-score-block* nil "the one we're working on")

(defun locate-text-in-score-block (sexp)
  "Return the string in the text field of the block"
  (let ((children (cadr (assq :children sexp))))
    (unless children (error "no :children field in block?"))
    (cdr (assq :text children))))
