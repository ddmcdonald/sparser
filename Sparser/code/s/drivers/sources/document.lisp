;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 2015-2019 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "document"
;;;   Module:  "drivers;sources:"
;;;  Version:   November 2019

;; initiated 4/25/15 to driving reading from a fully populated
;; article object. Continually modifying/adding routines through
;; 5/18/15. 
;; 6/8/2015 better rejection of sections that shouldn't be parsed.
;; 7/6/2015 commented out utility function show-paragraph-sents to help debug sentence
;; segmentation
;; Define a dummy action for read-from-document on a title-text section
;;  this was causing a major blowout (in terms of writing error messages) in the 
;;  overall test when reading document #65 PMC1702556
;; 9/9/15 Flushed the section globals here in favor of the ones
;;  with their object definitions. 

(in-package :sparser)

;;;---------
;;; globals
;;;---------

(defparameter *show-section-printouts* nil
  "Tracks entering and exiting sections of any type
  including paragraphs")

(defparameter *show-article-progress* nil
  "Announce what article we're working on")

(defvar *current-section-title* nil
  "Bound to the title-text object of each section recursively
   provided that the section (or section-of-sections) has one.
   See title-of-currect-section-is.")

(defvar *current-document-element* nil
  ;; motivated by pathological case in extract-titles-from-other-elements
  ;; where it needs a 'parent' but the obvious method doesn't work
  "Bound in each read-from-document method to the specific
   document object being operated on.")


;;--- context

(defun actually-reading ()
  ;; The special passes have their own flags that indicate
  ;; that they are underway. If both of those are down then
  ;; we are actually reading. This gates the parsing of
  ;; titles and the population of the discourse history.
  (declare (special *sentence-making-sweep* *scanning-epistemic-features*))
  (cond
    (*sentence-making-sweep* nil)
    (*scanning-epistemic-features* nil)
    (t t)))


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
        (*sections-to-ignore* nil)) ;; e.g. methods
    (declare (special *sentence-making-sweep* *sections-to-ignore*))
    (when (or *show-article-progress* *show-section-printouts*)
      (format t "~&~%~%Sweeping document ~a~%" (name doc)))
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

(defparameter *permit-reading-epistemic-features* nil
  "In December 2016 we encountered a set of articles where particular
 paragraphs somehow cleared pairs of positions and blocked further
 processing. This only occurred during this phase, perhaps because
 the suite of polywords being used does not include 'e.g.' and other
 such period-covering polywords and consequently run-time sentences
 differed from pre-build sentences. Since we don't need these features
 right now, this sweeps the problem under the rug.")

(defmethod read-epistemic-features ((a article))
  (when *permit-reading-epistemic-features*
    (let ((*scanning-epistemic-features* t)
          (*use-occasional-polywords* t) ;; not the usual sort
          (*grammar-and-model-based-parsing* nil)) ;; don't parse
      (declare (special *scanning-epistemic-features*
                        *use-occasional-polywords*
                        *grammar-and-model-based-parsing*))
      (when (or *show-article-progress* *show-section-printouts*)
        (format t "~&=============================================~%~
                   ~%~%Reading Epistemic features in ~a~%" (name a)))
      (read-from-document a)
      a)))

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
  (let ((*current-article* a)
        (*current-document-element* a))
    (declare (special *current-article*
                      *current-document-element*))
    (when (actually-reading)
      (initialize-article-semantic-file-if-needed a))
    (set-document-index a :ignore)
    (when *sentence-making-sweep*
      ;; makes the section-of-section objects as needed
      (sweep-for-embedded-sections a))
    (when (actually-reading)
      (when (or *show-article-progress* *show-section-printouts*)
        (format t "~&=============================================~%~
                   ~%Actually Reading ~a~%" (name a)))
      ;; This clears the -previous- run's history and objects
      (clean-out-history-and-temp-objects))
    (install-contents a)
    
    ;; --- parsing the title of the paper goes here ------
    (let ((count 0))
      (dolist (sec (children a))
        (set-document-index sec (incf count))
        (unless (ignore-this-document-section sec)
          (let ((*current-section* sec))
            (declare (special *current-section*))
            (catch 'do-next-paragraph ;; article 3058384 starts with paragraphs
              (read-from-document sec))
            (when (typep sec 'paragraph)
              (when (actually-reading)
                (after-actions sec)))))))
    (when (actually-reading)
      (after-actions a))
    (when (and *show-section-printouts* (actually-reading))
      (show-parse-performance a))
    (when (actually-reading)
      (close-article-semantic-file-if-needed))
    a))

(defmethod read-from-document ((ss section-of-sections))
  "A section-of-sections is a toplevel section such as Results
   that has section objects as its children. This reads through
   each of the sections in order, and handles its own title 
   if there is one."
  (let ((*current-document-element* ss))
    (declare (special *current-document-element*))
    (install-contents ss)
    (when *show-section-printouts*
      (format t "~&--------- starting section of sections ~a~%" ss))
    (multiple-value-bind (title subsections) ;; multiple-titles?
        (extract-titles-from-other-elements (children ss))

      (when title
        (when (actually-reading)
          (parse-section-title title)))
      
      (let ((count (copy-list '(a b c d e f g h i j))))
        (let ((*section-of-sections* ss)
              (*current-section-title* title)
              (section (car subsections))
              (remaining (cdr subsections))
              previous-section)
          (declare (special *current-section-title*
                            *section-of-sections*))
          (set-document-index section (pop count))
          (loop
             (unless section (return))
             (catch 'do-next-paragraph
               (read-from-document section))

             (when (typep section 'paragraph)
               (when (actually-reading)
                 (after-actions section)))
             
             (setq previous-section section)
             (setq section (car remaining)
                   remaining (cdr remaining))
             (when section
               (set-document-index section (pop count))
               (setf (previous section) previous-section)
               (setf (next previous-section) section)))
          (when (actually-reading)
            (after-actions ss))
          (when *show-section-printouts*
            (format t "~&~%--------- finished section of sections ~a~%" ss)
            (when (actually-reading) (show-parse-performance ss))))))))


(defmethod read-from-document ((s section))
  "The children of a section are paragraphs. Read through each
  of the paragraphs in sequence after first reading through the
  section title if there is one."
  (let ((*current-document-element* s))
    (declare (special *current-document-element*))
    (install-contents s)
    (when *show-section-printouts*
      (format t "~&~%--------- starting section ~a~%" s))
    (multiple-value-bind (title paragraphs)
        (extract-titles-from-other-elements (children s))
      (let* ((*current-section* s)
             (paragraph (car paragraphs))
             (remaining (cdr paragraphs))
             (count 0)
             previous-paragraph )
        (declare (special *current-section*))
        
        (when title
          (when (actually-reading)
            (parse-section-title title)))
        
        (let ((*current-section-title* title))
          (declare (special *current-section-title*))
          (loop
             (unless paragraph (return))
             (typecase paragraph
               (paragraph
                (set-document-index paragraph (incf count))
                (catch 'do-next-paragraph
                  (read-from-document paragraph))
                (when (actually-reading)
                  (after-actions paragraph)))
               
               (section
                (read-from-document paragraph))
               
               (otherwise
                (push-debug `(,s ,paragraph ,title))
                (error "Did not expect a ~a as a child of a section"
                       (type-of paragraph))))

             (setq previous-paragraph paragraph)
             (setq paragraph (car remaining)
                   remaining (cdr remaining))
             (when paragraph
               (setf (previous paragraph) previous-paragraph)
               (setf (next previous-paragraph) paragraph)))
          
          (when (actually-reading)
            (after-actions s))
          (when *show-section-printouts*
            (format t "~%--------- finished section ~a~%~%" s)
            (when (actually-reading) (show-parse-performance s))))))))




(defmethod read-from-document ((p paragraph))
  "Once all the sentences in the paragraph have been
   handled control is passed by a throw to the tag
   'do-next-paragraph. The usual point is in the section
   reader but it could also be the section-of-sections reader
   in some odd cases."
  (when *show-section-printouts*
    (format t "~&~%--------- starting paragraph ~a~%" p))
  (read-paragraph-guts p))

(defun read-paragraph-guts (p)
  (let ((*reading-populated-document* t)
        (*recognize-sections-within-articles* nil) ;; turn of doc init
        (*accumulate-content-across-documents* t) ;; don't clear history
        (*current-document-element* p)
        (*current-paragraph* p)) ;; read by sentence-maker
    (declare (special *reading-populated-document*
                      *recognize-sections-within-articles*
                      *accumulate-content-across-documents*
                      *current-document-element*
                      *current-paragraph*))
    (setf (contents p) (install-contents p))
    (let* ((text (content-string p)))
      (initialize-sentences) ;; set up or reuse the 1st sentence
      (paragraph-trace-hook p)
      
      ;; lifted from analyze-text-from-string 
      (establish-character-source/string text)
      (analysis-core))))


(defvar *reading-section-title* nil
  "Flag for the benefit of assess-relevance. The content
   of a section title is always relevant.")

(defun parse-section-title (title)
  (unless (> (length (content-string title)) 0) 
    (return-from parse-section-title title))
  (when *show-section-printouts*
    (format t "~&~%About to parse section title: ~s~%"
            (content-string title)))
  (let ((*reading-populated-document* t)
        (*reading-section-title* t)
        (*recognize-sections-within-articles* nil) ;; turn of doc init
        (*accumulate-content-across-documents* t) ;; don't clear history
        (*current-document-element* title)
        (*current-paragraph* title)) ;; for initialize-sentences
    (declare (special *reading-populated-document*
                      *reading-section-title*
                      *recognize-sections-within-articles*
                      *accumulate-content-across-documents*
                      *current-document-element*
                      *current-paragraph*))
    (setf (contents title) (install-contents title))
    (initialize-sentences)
    ;; For the setup on the title-text object see
    ;; setup-title-as-sentence-container
    (establish-character-source/string (content-string title))

    (catch 'do-next-paragraph
      ;; The throw is done in sweep-successive-sentences-from
      ;; when it believes that it's run out of sentences
      ;; to handle.      
      (analysis-core))
    (after-actions title)
    title))


(defmethod read-from-document ((tt title-text))
  "This case would be called if a the loop over daughters
   in an larger document element (e.g. section) still
   had a title-text included in its list. That should
   no longer happen assuming that they all use
   extract-titles-from-other-elements to determine what
   they actually loop over."
  (declare (ignore tt))
  nil)

;;;-----------------------------
;;; Identifying current section
;;;-----------------------------

(defun title-of-current-section-is (partial-string)
  (declare (special *current-section-title*))
  (let* ((title *current-section-title*)
         (title-string (when title (content-string title))))
    (when title-string
      (search partial-string title-string :test #'equalp))))

(defun exact-title-of-current-section-is (string)
  (declare (special *current-section-title*))
  (let* ((title *current-section-title*)
         (title-string (when title (content-string title))))
    (when title-string
      (string-equal string title-string))))


;;;---------------------------------------
;;; walking a function through a document
;;;---------------------------------------

(defgeneric recurse-through-document (source fn)
  (:documentation "recurses through document structure applying fn to the sentences"))

(defmethod recurse-through-document ((hc has-children) fn)
  (let ((children (children hc)))
    (if (eq 'sentence (type-of children))
        (funcall fn children)
        (loop for child in children
              do (recurse-through-document child fn)))))

#| no longer applicable
(defmethod recurse-through-document ((ss section-of-sections) fn in-results?)
  (let ((ir (or in-results? (in-results? ss))))
    (loop for child in (children ss)
      do (recurse-through-document child fn ir))))

(defmethod recurse-through-document ((tt title-text) fn in-results?)
  (declare (ignore tt fn in-results?)))

(defmethod recurse-through-document ((s section) fn in-results?)
  (when in-results?
    (break "rtd s"))
  (when (and in-results? (slot-boundp s 'title))
    (funcall fn (title s)))      
  (loop for child in (children s)
    do (recurse-through-document child fn (or in-results? (in-results? s)))))

(defmethod recurse-through-document ((p paragraph) fn in-results?)
  (declare (ignore p fn in-results?))
  nil)
|#

#| no longer used anywhere

(defun in-results? (s)
  ;; Are we in a results section?
  (when (slot-boundp s 'title)
    (let ((title 
           (if (stringp (title s)) 
             (title s)
             (content-string (title s)))))
      (member (string-downcase title)'("results") :test #'equal))))
|#


(defgeneric document-tree (source &optional show-sentence-strings)
  (:documentation "recurses through document structure creating a tree structure"))

(defmethod document-tree ((hc has-children) &optional show-sentence-strings)
  (cons hc
        (if (eq 'sentence (type-of (children hc)))
            (let* ((s (children hc))
                   (s-list (list s))
                   nxt)
              (loop while (setq nxt (next s))
                    do
                      (push (if show-sentence-strings
                                (sentence-string nxt)
                                nxt)
                            s-list)
                      (setq s nxt))
              (reverse s-list))
            (loop for child in (children hc)
                  collect (document-tree child show-sentence-strings)))))

(defmethod document-tree ((hc t) &optional show-sentence-strings)
    (list hc))


#| these don't seem to be used anywhere
(defparameter *results-section-titles* nil)
(defparameter *relevant-titles* nil)

(defun collect-results-section-titles (a)
  (let ((*relevant-titles* nil))
    (recurse-through-document a #'collect-relevant-titles nil)  
    (push (list (name a) *relevant-titles*)
          *results-section-titles*)))

(defun collect-relevant-titles (title)
  (push (content-string title) *relevant-titles*))
|#



;;;-------------------------------------------------
;;; arranging to ignore certain (toplevel) sections
;;;-------------------------------------------------
;;//// needs a setter

(defparameter *sections-to-ignore* 
  '("authors' contributions"
    "competing interests"
    "experimental procedures"
    "funding")
  "Contains a list of section titles or title fragments that
   name sections we want to skip over")

;;; Optionally ignore these.
(defparameter *method-section-names*
    '("method"
      "materials and methods"
      "methods summary"
      "methods"))

(defparameter *ignore-methods-sections* t)

(defun ignore-this-document-section (section)
  (when *sections-to-ignore*
    (unless (typep section 'paragraph)
      ;; A paragraph at the level of the article is not
      ;; a section we could consider ignoring

      (when (slot-boundp section 'title)
        ;(push-debug `(,section))
        ;(error "title of section hasn't been set"))
        (let ((title-object (title section))
              (sections-to-ignore (append *sections-to-ignore*
                                          (when *ignore-methods-sections*
                                            *method-section-names*))))
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
          (setf (parent ss) a)
          (setf (children ss) its-children)
          (loop for child in its-children
             do (setf (parent child) ss))
          (let ((title? (when (typep (car its-children) 'title-text)
                          ;;/// searching for it would be more robust
                          (car its-children))))
            (if title?
              (setf (title ss) title?)
              (setf (title ss) (make-unknown-title))))
          (setq child ss)))
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

