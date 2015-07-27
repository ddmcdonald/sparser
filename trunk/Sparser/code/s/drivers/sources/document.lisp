 ;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 2015 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "document"
;;;   Module:  "drivers;sources:"
;;;  Version:   June 2015

;; initiated 4/25/15 to driving reading from a fully populated
;; article object. Continually modifying/adding routines through
;; 5/18/15. 
;; 6/8/2015 better rejection of sections that shouldn't be parsed.
;; 7/6/2015 commented out utility function show-paragraph-sents to help debug sentence
;; segmentation
;; Define a dummy action for read-from-document on a title-text section
;;  this was causing a major blowout (in terms of writing error messages) in the overall test
;; when reading document #65 PMC1702556

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

(defparameter *show-article-progress* t
  "Announce what article we're working on")


(defvar *current-section-title* nil
  "Bound to the title-text object of each section recursively
   provided that the section (or section-of-sections) has one.
   See title-of-currect-section-is.")


;;--- context

(defun actually-reading ()
  ;; The special passes have their own flags that indicate
  ;; that they are underway. If both of those are down then
  ;; we are actually reading. This gates the parsing of
  ;; titles.
  (declare (special *sentence-making-sweep* *scanning-epistemic-features*))
  (and (not *sentence-making-sweep*)
       (not *scanning-epistemic-features*)))


;;;-------------------------------------------------
;;; For now -always- do a sweep before doing a read
;;;-------------------------------------------------

(defgeneric sweep-document (article)
  (:documentation "Presumes that it has been given a just-created
   article object for a document, i.e. an article fresh from it
   creation by parsing its .nxml. Runs the method read-from-document
   recursively over the articles elements, with switch settings
   that cause it to notice the daughters of sections are themselves
   sections (converting these to section-of-sections objects), 
   to set every section title (assuming the xml parser found it),
   to create the sequence of sentence objects under each paragraph,
   and to not do any reading (parsing)."))

(defmethod sweep-document ((doc article))
  "Creates additional document objects, including the sentences, 
   but does no analysis at all. Uses read-from-document
   to walk the document -- the same method as used to
   parse it."
  (let ((*sentence-making-sweep* t) ;; sweep that makes the sentences
        (*sections-to-ignore* nil)) ;; e.g. also methods
    (declare (special *sentence-making-sweep* *sections-to-ignore*))
    (when *show-article-progress*
      (format t "~&Sweeping document ~a~%" (name doc)))
    (read-from-document doc)
    doc))

;;;--------------------------------------------
;;; shallow pass for rhetoric/epistemic status
;;;--------------------------------------------

(defgeneric read-epistemic-features (article)
  (:documentation "Presumes that it is getting an article object
    that has been processed by sweep-document. Calls the method
    read-from-document recursively on all the article's elements.
    Runs for side-effects on the content objects on those elements
    principally sentences and the paragraphs that contain them to
    accumulated data to be used by the assess-relevance function 
    to determine whether a given sentence contains information that
    is new in this document."))

(defmethod read-epistemic-features ((a article))
  (let ((*scanning-epistemic-features* t)
        (*use-occasional-polywords* t) ;; not the usual sort
        (*sweep-for-patterns* nil)) ;; don't parse
    (declare (special *scanning-epistemic-features*
                      *use-occasional-polywords*
                      *sweep-for-patterns*))
    (read-from-document a)
    a))

;;;--------------------------------
;;; The read-from-document methods 
;;;--------------------------------

(defgeneric read-from-document (source)
  (:documentation "Given a document object, sets it
   up to be navigated, manages the character source, initializes
   the necessary flags to ensure the document isn't gratuitously
   reclaimed. Arranges for the article to be returned as the value
   of the analysis. Looks at control parameter settings to 
   determine what to do on a given pass."))

(defmethod read-from-document ((a article))
  (declare (special *sentence-making-sweep* *sections-to-ignore*))
  (setq *current-article* a) ;; sets up the function (article)
  (when *sentence-making-sweep*
    ;; makes the section-of-section objects as needed
    (sweep-for-embedded-sections a))
  (install-contents a)
  (when (and *show-article-progress*
             (not *sentence-making-sweep*))
      (format t "read-from-document ~a~&" (name a)))
  (let ((count 0))
    (dolist (sec (children a))
      (setf (doc-index sec) (incf count))
      (unless (ignore-this-document-section sec)
        (setq *section* sec)
        (catch 'do-next-paragraph ;; article 3058384 starts with paragraphs
          (read-from-document sec)))))
  (when (actually-reading)
    (after-actions a))
  a)

(defmethod read-from-document ((ss section-of-sections))
  "A section-of-sections is a toplevel section such as Results
   that has section objects as its children"
  (setq *section-of-sections* ss)
  (install-contents ss)
  (let* ((subsections (children ss))
         (title (when (typep (car subsections) 'title-text)
                   (car subsections)))
         (count (copy-list '(a b c d e f g h i j))))
    (when title
      (setf (title ss) title)
      (setq subsections (cdr subsections)))
    (when *show-section-printouts*
      (format t "~&--------- starting section of sections ~a~%" ss))
    (let ((*current-section-title* title)
          (section (car subsections))
          (remaining (cdr subsections))
          previous-section)
      (declare (special *current-section-title*))
      (setf (doc-index section) (pop count))
      (loop
        (unless section (return))
        (catch 'do-next-paragraph
          (read-from-document section))
        (setq previous-section section)
        (setq section (car remaining)
              remaining (cdr remaining))
        (when section
          (setf (doc-index section) (pop count))
          (setf (previous section) previous-section)
          (setf (next previous-section) section)))
      (when (actually-reading)
        (after-actions ss))
      (when *show-section-printouts*
        (format t "~&~%--------- finished section of sections ~a~%" ss)))))

(defmethod read-from-document ((tt title-text))
  ;; not sure what to do with title-text when it appears as a section in a section-of-sections
  nil)

(defmethod read-from-document ((s section))
  (setq *current-section* s)
  (install-contents s)
  (when *show-section-printouts*
    (format t "~&~%--------- starting section ~a~%" s))
  (let* ((all-children (children s))
         (title (loop for child in all-children
                  when (typep child 'title-text) return child))
         (paragraphs (loop for child in all-children
                       when (typep child 'paragraph)
                       collect child))
         (paragraph (car paragraphs))
         (remaining (cdr paragraphs))
         (count 0)
         previous-paragraph )
    (when title 
      (setf (title s) title))
    (when title
      (when (actually-reading)
        (parse-section-title title)))
    (let ((*current-section-title* title))
      (declare (special *current-section-title*))
      (loop
        (unless paragraph
          (return))
        (setq *paragraph* paragraph)
        (setf (doc-index paragraph) (incf count))
        (catch 'do-next-paragraph
          (read-from-document paragraph))
        (when (actually-reading)
          (after-actions paragraph))
        (setq previous-paragraph paragraph)
        (setq paragraph (car remaining)
              remaining (cdr remaining))
        (when paragraph
          (setf (previous paragraph) previous-paragraph)
          (setf (next previous-paragraph) paragraph)))
      (when (actually-reading)
        (after-actions s))
      (when *show-section-printouts*
        (format t "~%--------- finished section ~a~%~%" s)))))

(defmethod read-from-document ((p paragraph))
  (when *show-section-printouts*
    (format t "~&~%--------- starting paragraph ~a~%" p))
  (let ((*reading-populated-document* t)
        (*recognize-sections-within-articles* nil) ;; turn of doc init
        (*accumulate-content-acro/Users/ddm/sparser/Sparser/code/s/drivers/sources/document.lispss-documents* t)  ;; don't clear history
        (*current-paragraph* p)) ;; read by sentence-maker
    (declare (special *reading-populated-document*
                      *recognize-sections-within-articles*
                      *accumulate-content-across-documents*
                      *current-paragraph*))
    (install-contents p)
    (let ((text (content-string p)))
      (initialize-sentences) ;; set up or reuse the 1st sentence
      ;; lifted from analyze-text-from-string 
      (establish-character-source/string text)
      ;; Once all the sentences in the paragraph have been
      ;; handled control is passed by a throw to the tag
      ;; 'do-next-paragraph. The usual point is in the section
      ;; reader but it could also be the section-of-sections reader
      ;; in some odd cases.
      (analysis-core))))



(defvar *reading-section-title* nil
  "Flag for the benefit of assess-relevance. The content
   of a section title is always relevant.")

(defun parse-section-title (title)
  (declare (special *trap-error-skip-sentence*))
  (let* ((string (content-string title))
         (length (length string)))
    ;; We could parse them all, but really should have a model
    ;; of biomedical journal titles before we do that, so until
    ;; then, making a heuristic limitation on minimal length
    (when (> length 20)
      ;; Does it end in a period? Othewise add one. 
      (unless (eql #\. (char string (1- length)))
        (setq string (string-append string ".")))
      (let ((*reading-section-title* t)
            (*recognize-sections-within-articles* nil) ;; turn of doc init
            (*accumulate-content-across-documents* t)) ;; don't clear history
        (declare (special *reading-section-title*
                          *recognize-sections-within-articles*
                          *accumulate-content-across-documents*))
        (establish-character-source/string string)
        (when *show-section-printouts*
          (format t "~&~%About to parse section title%"))
        (if *trap-error-skip-sentence*
          (handler-case
              (analysis-core)
            (error (e)
               (ignore-errors ;; got an error with something printing once
                (format t "~&Error in ~s~%~a~%~%" (current-string) e))))
          (analysis-core))
        (let ((s (identify-current-sentence)))
          (setf (title-sentence title) s))))))



;;;-----------------------------
;;; Identifying current section
;;;-----------------------------

(defun title-of-currect-section-is (partial-string)
  (declare (special *current-section-title*))
  (let* ((title *current-section-title*)
         (title-string (when title (content-string title))))
    (when title-string
      (search partial-string title-string :test #'equalp))))



;;;---------------------------------------
;;; walking a function through a document
;;;---------------------------------------

(defgeneric recurse-through-document (source fn in-results?)
  (:documentation "recurses through document structure applying fn"))
(defmethod recurse-through-document ((a article) fn in-results?)
 (loop for child in (children a)
    do (recurse-through-document child fn nil)))
(defmethod recurse-through-document ((ss section-of-sections) fn in-results?)
  (declare (special ss))
  (let
      ((ir (or in-results? (in-results? ss))))
    (loop for child in (children ss)
      do (recurse-through-document child fn ir))))

(defmethod recurse-through-document ((tt title-text) fn in-results?)
  (declare (special tt))
  ;;(print `(title-text , (content-string tt)))
  )
(defmethod recurse-through-document ((s section) fn in-results?)
  (declare (special s in-results?))
  (when in-results?
    (break "rtd s"))
  (if (and in-results? (slot-boundp s 'title))
      (funcall fn (title s)))
      
  (loop for child in (children s)
    do (recurse-through-document child fn (or in-results? (in-results? s)))))

(defmethod recurse-through-document ((p paragraph) fn in-results?)
  nil)

(defun in-results? (s)
  ;; Are we in a results section>
  (declare (special s))
  (when (slot-boundp s 'title)
    (let ((title 
           (if (stringp (title s)) 
             (title s)
             (content-string (title s)))))
      (cond
       ((member (string-downcase title)'("results") :test #'equal)
        t)
       (t
        ;;(print (list 'results? title))
        nil)))))



(defparameter *results-section-titles* nil)
(defparameter *relevant-titles* nil)

(defun collect-results-section-titles (a)
  (let ((*relevant-titles* nil))
    (recurse-through-document a #'collect-relevant-titles nil)  
    (push (list (name a) *relevant-titles*)
          *results-section-titles*)))
(defun collect-relevant-titles (title)
  (push (content-string title) *relevant-titles*))
          
  

#|
(defparameter *show-paragraph-sents* t)

(defun show-paragraph-sents (p)
  (when *show-paragraph-sents*
  (format t "Paragraph sents: ~&")
  (let
      ((sent (if (consp (children p))
                 (if (cdr (children p))
                     (second (children p))
                     (car (children p)))
                 (children p))))
    (declare (special sent))
    (print sent)
    (loop while (setq sent (next sent))
      do (print sent)))))
|#



;;;-------------------------------------------------
;;; arranging to ignore certain (toplevel) sections
;;;-------------------------------------------------
;;//// needs a setter

(defparameter *sections-to-ignore* 
  '(
    "authors' contributions"
    "competing interests"
    "experimental procedures"
    "funding"
    )
  
  
  "Contains a list of section titles or title fragments that
  name sections we want to skip over")


;;; let's not ignore these for now. 
(defparameter *methods-section-names*
    '("method"
    "materials and methods"
    "methods summary"
    "methods"))


(defparameter *ignore-methods-sections* t)

(defun ignore-this-document-section (section)
  (when *sections-to-ignore*
    (unless (typep section 'paragraph) ;; happens sometimes
      (when (slot-boundp section 'title)
        ;(push-debug `(,section))
        ;(error "title of section hasn't been set"))
        (let ((title-object (title section))
              (sections-to-ignore (append *sections-to-ignore*
                                          (if *ignore-methods-sections*
                                              *method-section-names*)))
                                            
              )
          (when nil
            ;; teething problem with abstract
            (unless title-object
              (push-debug `(,section))
              (error "Section somehow doesn't have a title object")))
          (when title-object
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
              (dolist (ignore-substring sections-to-ignore nil)
                (when (search ignore-substring title-string
                              :test #'equalp)
                  (when *show-section-printouts*
                    (format t "~&~%------- Ignoring section ~a --------" section))
                  (return t))))))))))


;;;--------------------------------
;;; sections-of-sections detection
;;;--------------------------------

(defun sweep-for-embedded-sections (a)
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
      (return-from sweep-for-embedded-sections nil))
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

