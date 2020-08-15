4;;; -*- Mode: LISP; Syntax: Common-Lisp; Package: CLIC -*-
;;; Copyright (c) 2020 Smart Information Flow Technologies
;;;
;;;     File:  "score"
;;;   Module:  "drivers;sources:"
;;;  Version:  August 2020

(in-package :sparser)

(defparameter *score-json* "~/temp/pre_remote_dicts/"
  "Directory that holds the JSON files")

;; (collect-score-json)  <--- run before anything else
(defun collect-score-json (&optional (dir *score-json*))
  "Read out the directory into the standard global"
  (let ((pathnames
         (directory (merge-pathnames "*.json" dir))))
    (setf *json-files-to-read* pathnames)
    (length pathnames)))

(defparameter *bad-score-files*
  '("Alyami_covid_yl789" ; Unable to encode character 56319 as :utf-8
    "Bello-Chavolla_covid_rb96l" ; #11 Error during string-to-utf8: Unable to encode character 54 as :utf-8.
    ))

#| How 2's

 (collect-score-json) ; first prime the pump -- 100 articles
 (run-nth-score-article 9)
 (loop for n from 0 to (length *sequence-of-block-texts*) do (test-sp n))
 (print-raw-paragraphs)
|#


(defvar *sequence-of-block-texts* nil "cache for debugging by line number")
(defvar *raw-paragraphs* nil)
(defvar *ready-paragraphs* nil)
(defvar *score-sections* nil)
(defvar *s-sexp* nil)


(defvar *pargraph-list* *raw-paragraphs*)
(defun para# (n &optional set-para-list)
  (nth n *pargraph-list*))

(defun blocks-include (title paragraph-list)
  "Do any of the typed paragraphps in the list have this title?
   Can noyt be used on text blocks."
  (loop for p in paragraph-list
     when (and (typep p 'score-paragraph)
               (eq (flag p) titlr))
     return p))

(defun blocks-include-any (type-name paragraph-list)
  "Are any of the blocks (paragraphs) paragraphs of this type"
  (loop for p in paragraph-list
     when (typep p type-name)
     return p))


;;--- Principal entry point when all working

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
      (let ((article (make-instance 'article)))
        (setf (name article) (intern handle (find-package :sparser)))
        (setf (article-source article) pathname)
        (sort-out-score-paragraphs article sexp)
        (run-json-article article
                          :quiet nil ; show paragraph chunking
                          :stats t
                          :show-sect t
                          )
        article))))

(defun sort-out-score-paragraphs (article sexp)
  "Pull the paragraph text out of the JSON blocks. Type them and filter
   out text from headers when we can identify it as such.
   Then group ordinary blocks inside sections created from the headers.
   When that dust settles, assign the results to fields in the article."
  (declare (special *sequence-of-block-texts* *raw-paragraphs*
                    *ready-paragraphs* ))
  (let ( action-paragraphs )
    (identify-score-block-texts sexp) ;; -> *sequence-of-block-texts*
    ;; (print-extracted-block-texts)

    ;; is the 1st line a tacit running head?
    (when (tacit-running-head? (nth 0 *sequence-of-block-texts*))
      (push (make-running-head (nth 0 *sequence-of-block-texts*))
            action-paragraphs))

    (collect-score-json-paragraphs sexp) ;; -> *raw-paragraphs*
    ;; (print-raw-paragraphs)

    (unless (or (blocks-include-any 'action-paragraph *raw-paragraphs*)
                action-paragraphs)
#|
    (setq action-paragraphs
          (loop for p in raw-paragraphs
             when (eq (type-of p) 'action-paragraph)
             collect p))
    (if action-paragraphs
      (clean-score-paragraphs action-paragraphs) ;; -> *ready-paragraphs*
      (setq *ready-paragraphs* *raw-paragraphs*))|#

      (aggregate-score-para-into-sections *raw-paragraphs* article))

    article ))


(defun identify-score-block-texts (sexp)
  "First step is to collect up the text strings of each block
   in the input sexp of JSON->SEXP forms.
   Stores the result in *sequence-of-block-texts*   "
  (let ((blocks (locate-blocks-in-json sexp)))
    (let ((texts (loop for b in blocks
                    collect (locate-text-in-score-block b))))
      (setq *sequence-of-block-texts* texts)
      (length texts))))


(defun tacit-running-head? (text-line)
  "Is this line the sort of thing that we'd expect to find as running
   header or maybe footer?"
  (string-equal "medRxiv" (subseq text-line 0 7)))

(defun make-running-head (text-line)
  (let ((p (make-instance  'action-paragraph :flag :running-head)))
    (setf (arg-alist p) `(:header ,text-line))
    p))


(defun collect-score-json-paragraphs (sexp)
  "Map through the sexp of the text extracted from each block
   and wrap it in the appropriate type of paragraph.
   Sets the ordered list of objects to *raw-paragraphs* "
  (let ((blocks (locate-blocks-in-json sexp)))
    (let ((paragraphs
           (loop for b in blocks
              as text = (locate-text-in-score-block b)
              collect (make-score-paragraph text))))
      (setq *raw-paragraphs* paragraphs)
      (length paragraphs))))



(defun clean-score-paragraphs (action-paragraphs)
  "Extract the string to delete from the action paragraphs
   and sweep over the sequence of paragrahs modifying their
   text strings as needed. Stash the result in *ready-paragraphs*"
  (declare (special *raw-paragraphs* *ready-paragraphs*))
  (flet ((lift-string-from-action-para (para)
           )
         (remove-specified-text (string para)
           ))
    (let ((filter-strings (loop for p in action-paragraphs
                             collect (lift-string-from-action-para p))))
      ;; the paragraphs retain their identities, only the text
      ;; in their content-string fields is affected
      (when (cdr filter-strings)
        (break "mutiple strings to remove")) ; rewrite as loop over the stringis

      ;; loop over the paragraphs, doing the deletion
      ;; and dropping the action paragraphs on the floor
      (let ((clean
             (loop for p in *raw-paragraphs*
                unless (eq (type-of p) 'action-paragraph)
                collect (remove-specified-text p (car filter-strings)))))
        (setq *ready-paragraphs* clean)
        (length clean)))))



(defun aggregate-score-para-into-sections (paragraphs article)
  "Loop through the list of paragraph objects and see if we can
   identify larger-scale section-type structure. We also identify
   the title, keywords, etc. and directly fill the slots on the article."
  ;;/// ignoring keyword, authors and other front matter for now
  (let ((index -1)
        (max-index (length paragraphs))
        index-after-title
        first-section-head
        p  section sections  index-of-next  )
    
    ;; First collect the first tagged title para, or accept the 1st line as the title
    (setq index-after-title (find-a-title-para paragraphs article))

    ;; From the index of the title, walk through the list of paragraphs
    ;; until the first major heading is reached.
    (setq first-section-head (index-of-next-header index-after-title paragraphs))

    ;; From that section head, loop through the rest of the
    ;; paragraphs. Creat a new section at each heading whose children
    ;; are the paragraphs from there to just before the next heading
    (setq sections
          (collect-all-the-sections first-section-head paragraphs))
    (knit-sections sections article)
    (setq *score-sections* sections)

    (setf (children article) sections)
    article ))

(defun collect-all-the-sections (starting-at paragraph-list)
  "Walk through the paragraphs starting at a heading, and collect successive
   sections through to the end. Caller will take care of kniting them together"
  (let ((max-index (1- (length paragraph-list)))
        sections section header-index index-of-next )
    (setq header-index starting-at)
    (loop
       (multiple-value-setq (section index-of-next)
         (collect-next-section header-index paragraph-list))
       (push section sections)
       (when (>= index-of-next max-index)
         (return))
       (setq header-index index-of-next))
    (nreverse sections)))

(defun collect-next-section (header-index paragraph-list)
  "Collect the paragraphs from the starting para (and header)
   up to but not including the next header (or the end of the
   list of paragraphs). Make the section object based on the header paragraph
   and set the accumulated paragraphs to be its children and knit them
   together."
  (let* ((header-para (nth header-index paragraph-list))
         (index-of-next (index-of-next-header (1+ header-index) paragraph-list))
         (start (1+ header-index))
         (end (1- index-of-next)))
    (let* ((section-paras
            (loop for i from start to end
               collect (nth i paragraph-list)))
           (s (make-instance 'section))
           (name (flag header-para))) ; e.g. :results
      (setf (name s) name)
      (setf (children s) section-paras)
      (knit-paragraphs section-paras s) ; set previous, next, parent pointers
      (values s
              index-of-next))))

(defun index-of-next-header (start paragraphs)
  "Walk the index across successive paragraphs until
   a major header is reached. Return the value of the index.
   When we're getting to the end of the list of pagagraphs
   we don't expect it to end in a header paragraphs, but we
   check for that"
  (let* ((index start)
         (max-index (length paragraphs))
         (para (nth index paragraphs)))
    (until (major-section? para)
        index
      (format t "~&~a ~a" index para)
      (incf index)
      (when (>= index max-index)
        (return-from index-of-next-header (1- index)))
      (setq para (nth index paragraphs)))))


(defun find-a-title-para (paragraphs article)
  "Identify and set the title of the article.
   Return the index of the paragraph that comes just after the title"
  ;;/// doesn't independently account for prior running heads and such
  (flet ((title-para? (p)
           (when (and (typep p 'heading-paragraph)
                      (memq (flag p) '(:title :short-title)))
             (setf (content-string p) (get-sp-arg p :text))
             p)))
    (if (title-para? (nth 0 paragraphs))
      (then
        (setf (title article) (content-string (nth 0 paragraphs)))
        (if (title-para? (nth 1 paragraphs)) 2 1))
      (else
        (setf (title article) (content-string (first paragraphs)))
        1
        ))))



;;--- testing jigs

(defun nth-json-sexp (n)
  "Look up the article and return the sexp transduced from the JSON.
   Best to capture the output in a variable since the spew is rather large."
  (declare (special *json-files-to-read*))
  (unless *json-files-to-read* (error "Run collect-score-json"))
  (let* ((pathname (nth (1- n) *json-files-to-read*))
         (filename (pathname-name pathname)))
    (when (member filename *bad-score-files* :test #'string-equal)
      (format t "~&Ignoring bad file: ~a" filename)
      (return-from nth-json-sexp nil))
    (format t "~&Reading ~a~%" filename)
    (setq *s-sexp* (cl-json::decode-json-from-source pathname))
    (identify-score-block-texts *s-sexp*)))

(defun print-extracted-block-texts ()
  "Walk through *sequence-of-block-texts* printing the text
   along with an index number for refering to them with nth.
   Best used in a line-truncating repl."
  (declare (special *sequence-of-block-texts*))
  (let ((count -1))
    (loop for text in *sequence-of-block-texts*
       do (format t "~&~a: ~s" (incf count) text))))

(defun print-raw-paragraphs ()
  (declare (special *raw-paragraphs*))
  (let ((count -1))
    (loop for p in *raw-paragraphs*
       do (format t "~&~a: ~a" (incf count) p))))


(defvar p-text "" "cache the sexp of the block we're working on")
(defvar *p* nil "cache the paragraph we've constructed")
(defun test-sp (n) ; 'test score paragraph
  (setq p-text (nth n *sequence-of-block-texts*))
  (format t "~&~a: ~s" n p-text)
  ;;(format t "~%~a chars" (length p-text))
  (let ((p (make-score-paragraph p-text)))
    (setq *p* p)
    (format t "~&~a" p)
    p))

  




;;;-------------------------
;;; subclasses of paragraph
;;;-------------------------

(defclass score-paragraph (paragraph)
  ((flag :initarg :flag :accessor flag)
   (arg-alist :initform nil :accessor arg-alist))
  (:documentation "Superclass to group the paragraphs that
    are used for side-effects during document construction"))

(defun get-sp-arg (p keyword) ; 'get score paragraph argument'
  (cadr (memq keyword (arg-alist p))))

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


   
;;;--------------------------
;;; text -> paragraph object
;;;--------------------------

#| A line may just have a number on it #1 -- "9"
|#

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
              ;;(format t "size: ~a~%" size)
              (setf (prefix p) (subseq text 0 size)))))
        p)
        
      (when keyword
        (case keyword
          (:running-head
           (setq p (make-instance
                    'action-paragraph :flag :running-head))
           (setf (arg-alist p)
                 `(:header ,residue)))
          
          ((:table :figure :model :study)
           (setq p (make-instance 'heading-paragraph :flag keyword))
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
                           (setf (arg-alist p) `(:number ,number
                                                 :caption ,content))))
                       (else
                         (setf (arg-alist p) `(:number ,residue))))))))))
          ((:title :short-title)
           ;; Expect the content of the title to be in the residue text
           (setq p (make-instance 'heading-paragraph :flag keyword))
           (when residue
             (setf (arg-alist p) `(:text ,residue))))
         
          (otherwise
           (setq p (make-instance
                    'heading-paragraph :flag keyword)))))
      p )))

 
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
     is listed in the *major-section-flags* ")
  (:method ((p heading-paragraph))
    (memq (flag p) *major-section-flags*))
  (:method ((p paragraph)) nil))

    
;; This list is used by detect-score-title for matching against texts
(defparameter *score-sect-titles*
  '("Running Head"
    "Abstract"
    "Acknowledgement"
    "aim"
    "Authors"
    "Background"
    "Competing interest statement"
    "Conclusion"
    "Correspondant Author"  "Corresponding author"
    "Data"
    "Data Analysis"
    "Discussion"
    "Figure" "Fig" "Figures"
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
    "References" "Reference list"  ;; can be line-final
    "Study"
    "Variables" 
    "Table" "Tables" 
    "Title" "Short title"
    ))

(defparameter *score-set-titles-taking-number*
  '("aim" "Figure" "Model" "Table"))


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
        (when (and index ; // zero is the beginning of the line
                   (= 0 index))
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
  "Walk through the sexp version of the full JSON expression
    and return the succession of text bocks as a list of sexp"
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
