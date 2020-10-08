;;; -*- Mode: LISP; Syntax: Common-Lisp; Package: (SPARSER LISP) -*-
;;; Copyright (c) 2020 Smart Information Flow Technologies
;;;
;;;     File:  "score-paragraphs"
;;;   Module:  "drivers;sources:"
;;;  Version:  September 2020

;; broken out of score.lisp 9/22/20

(in-package :sparser)

  
;;;--------------------------
;;; text -> paragraph object
;;;--------------------------

(defvar *paragraph-index* -1
  "Initialized in collect-score-json-paragraphs and incremented with each
   successive JSON block of text. Maintained outside of any loop because
   we frequently find multiple paragraph material (e.g. titles) buried
   under overly long running-head texts, which have to be lifted out and
   given their own unique paragraph index.")

(defun make-score-paragraph (text)
  "Called from collect-score-json-paragraphs which has make its own
   call to locate-blocks-in-json, and is in a loop where it extracts
   the text from the block, increments an index, and calls us with
   this text. It collects the paragraphs that we return.
     Many 'paragraphs' are actually section headings.
   Try to detect these and use the specialized paragraph object
   for them. There are a lot of other 'small' paragraph texts that
   may play substantive roles in the structure of the document,
   perhaps as table column headings. Try to identify these and
   make them specialized paragraphs as well.
     The point is to make it easier for the sweep over these
   paragraphs to impose a reasonable document structure."

  (declare (special *paragraph-index*))

  (let ((length (length text))
        index  p )

    ;; null-paragraph
    (when (< length 2) ; i.e. just one or two characters
      ;; don't bother to make a paragraph
      ;; (setq p (make-instance 'null-paragraph :flag :too-short :index index))
      ;; (setf (content-string p) text)
      (return-from make-score-paragraph p))

    (setq index (incf *paragraph-index*))
    
    (multiple-value-bind (keyword residue from-end?)
        (detect-score-title text)
      
      (unless keyword
        (cond
          ((tacit-running-head? text) ; looks at just the prefix
           (setq p (make-instance  'action-paragraph :flag :running-head))
           (setf (para-index p) index)
           ;; -- detect stuff that's been buried
           ;; if there is any, call ourselves recursively (??) or just do it directly
           ;; when we've gotten definitive type info (like an explicit "title")
           ;; Then modify the text, bumping the index and somehow pass the
           ;;   extra paragraph(s) to the collector in collect-score-json-paragraphs.
           ;;   Maybe return a list?
           (setf (arg-alist p) `(:header ,text)))

          ((likely-short-header length text) ; subheading-paragraph
            (setq p (make-instance 'subheading-paragraph
                                   :flag text :index index))
            (setf (content-string p) text))
          
          (t ; text-paragraph
            (setq p (make-instance 'text-paragraph :index index))
            (setf (content-string p) (trim-whitespace text))
            (let ((size (if (> 12 length) length 12)))
              (setf (prefix p) (subseq text 0 size)))))) ; for printing
        
        
      (when keyword
        (case keyword
          ((:running-head :running-title)
           (setq p (make-instance
                    'action-paragraph :flag :running-head :index index))
           (setf (arg-alist p) `(:header ,residue)))

          ;; heading-paragraph -- with numbers
          ((:table :figure :model :study :supplementary-materials)
           (setq p (make-instance 'heading-paragraph :flag keyword :index index))
           (let ((index-of-space (position #\space text)))
             (when index-of-space
               (let ((length-after (length (subseq text index-of-space))))
                 (if (< length-after 4)
                   (setf (arg-alist p) `(:number ,residue))
                   (let ((next-space (position #\space residue)))
                     (if next-space
                       (then ; there's material after the number
                         (let ((content (subseq residue next-space))
                               (number (subseq residue 0 next-space)))
                           (setf (content-string p) content)
                           (setf (arg-alist p) `(:number ,number
                                                 :caption ,content))))
                       (else
                         (setf (arg-alist p) `(:number ,residue))))))))))

          ;; heading-paragraph
          ((:title :short-title)
           ;; Expect the content of the title to be in the residue text
           (setq p (make-instance 'heading-paragraph :flag keyword :index index))
           (when residue
             (setf (content-string p) residue)
             (setf (arg-alist p) `(:text ,residue))))

          (otherwise
           (cond
             (residue
              ;; heading, but store the residue, not the text - like table or figures
              ;; where there is content in the rest of the line
              (setq p (make-instance 'heading-paragraph :flag keyword :index index))
              (setf (arg-alist p) `(:caption ,residue)))

             (t ;; heading-paragraph -- no residue
              (setq p (make-instance
                       'heading-paragraph :flag keyword :index index))
              (setf (content-string p) text)
              (setf (arg-alist p) `(:caption ,text)))))))
      
      p )))


(defun tacit-running-head? (text-line)
  "Is this line the sort of thing that we'd expect to find as running
   header or maybe footer?"
  (let ((length (length text-line)))
    (or (when (> length 7) ;; line might have just one character on it
          (string-equal "medRxiv" (subseq text-line 0 7)))
        (when (> length 19)
          (string-equal "all rights reserved" (subseq text-line 0 19)))
        (all-caps? (subseq text-line 0 2)))))

  
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


;;;------------------------
;;; categories of headings
;;;------------------------

(defparameter *major-section-flags*
  '(:abstract    
    :introduction
    :method
    :method-and-results
    :discussion
    :results
    :references :reference-list))

(defgeneric major-section? (paragraph)
  (:documentation "Is this paragraph a heading paragraph whose flag
    is listed in the *major-section-flags*  Used when consolidating
    paragraphs into sections. Non-major heading paras (such as figures)
    are incorporated into the body of the accumulating section")
  (:method ((p heading-paragraph))
    (memq (flag p) *major-section-flags*))
  (:method ((p paragraph)) nil))


(defparameter *post-references-section-headings*
  `("Figure" "Fig" "Figures"
    "Supplementary Materials"
     "Table" "Tables"  ))

(defgeneric significant-heading? (paragraph)
  (:documentation "Is this heading significant enough to ensure that
    it is exposed to form a section after we've created a section like
    'References' which the parser is going to ignore.")
  (:method ((p heading-paragraph))
    (memq (flag p) *post-references-section-headings*))
  (:method ((p paragraph)) nil))


(defparameter *score-sections-to-ignore*
  '("References" "Reference list" "Metadata")
  "Has to be one of the major section types.")

(defgeneric section-parser-ignores? (paragraph)
  (:documentation "This paragraph might be the basis for a section
    (see collect-next-section), but we've told the document scanner
    not to parse instances of this section (see drivers/sources/document.lisp)")
  (:method ((p heading-paragraph))
    (memq (flag p) *score-sections-to-ignore*))
  (:method ((p paragraph)) nil))

(defun setup-sections-to-ignore-for-score ()
  "Arranges to set the globals that control what sections we parse
   and which we ignore"
  (declare (special *score-sections-to-ignore*))
  (set-sections-to-ignore *score-sections-to-ignore* nil))


;;;----------------
;;; section titles
;;;----------------
    
;; This list is used by detect-score-title for matching against texts
(defparameter *score-sect-titles*
  '("Running Head" "Running title"
    "Abstract"
    "Acknowledgement" "Acknowledgments"
    "aim"
    "Authors"
    "Background"
    "Competing interest statement"
    "Conclusion"
    "Correspondant Author"  "Corresponding author"
    "Data"
    "Data Analysis"
    "Design"
    "Discussion"
    "Figure" "Fig" "Figures"
    "Footnotes"
    "Introduction" ;; can be line-final -- on keywords line
    "Keywords" "Key words"
    "Limitations"
    "Main Text"
    "Measures" "Measurements"
    "Method"
    "Method and Results"
    "Model"
    "Notes"
    "Objective"
    "One Sentence Summary"
    "Original article"
    "Participants"
    "Participants and Procedures" ; subtitle
    "Procedures"
    "Results"
    "References" "Reference list"  ;; can be line-final
    "Study"
    "Supplementary Materials"
    "Variables" 
    "Table" "Tables" 
    "Title" "Short title"
    ))

(defparameter *score-set-titles-taking-number*
  '("aim" "Figure" "Model" "Table"))


(defun detect-score-title (text)
  "Called by make-score-paragraph - Loops over the titles in *score-sect-titles*.
   If one of them matches, return it (as a keyword), along with any residue
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
  (let ((text-length (length text))
        (title-length (length title)))
    (flet ((key-name (title)
             (intern (string-upcase
                      (substitute #\- #\space title))
                     (find-package :keyword))))

      (when (>= text-length title-length)
        (let ((index (search title text :test #'string-equal))
              (end-index (search title text :test #'string-equal :from-end t)))
          (cond
            ((and index ; // zero is the beginning of the line
                  (= 0 index))
             (let ((more? (subseq text title-length)))
               (if (string-equal more? "")
                 (setq more? nil)
                 (setq more? (string-left-trim '(#\space #\: ) more?)))
               (let ((key-name (string-upcase
                                (substitute #\- #\space title))))              
                 (values (intern key-name (find-package :keyword))
                         more?))))
            ((and end-index ; "REPUBLICANS AND COVID-19 JUDGMENTS 31 Introduction"
                  (= text-length (+ end-index title-length)))
             ;; But it has to be the last thing in the string
             (let ((prefix (subseq text 0 end-index)))
               (values (key-name title)
                       prefix
                       :from-end)))
            (t nil)))))))


