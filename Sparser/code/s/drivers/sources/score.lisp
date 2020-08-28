;;; -*- Mode: LISP; Syntax: Common-Lisp; Package: (SPARSER LISP) -*-
;;; Copyright (c) 2020 Smart Information Flow Technologies
;;;
;;;     File:  "score"
;;;   Module:  "drivers;sources:"
;;;  Version:  August 2020

(in-package :sparser)

#| 
 (collect-score-json) ; first prime the pump -- 100 articles

;; The driver
 (run-nth-score-article 9)
   -- Converts the JSON to our document structure then calls run-json-article,
     with quiet off and show-sect on so you can see the text. Displays the CoV stats

;; Don't parse everything (list is next to the function)
 (setup-sections-to-ignore-for-score)

;; Look at what the article says
(write-article-to-file a "~/temp/")

;; Looking at intermdiate results

(print-extracted-block-texts)
  -- numbers and prints out every the text from every block in the document.
   Most useful if you've got your REPL in truncated mode

(print-raw-paragraphs)
  -- same idea for the specialized paragraph objects that the blocks' text
   is converted to. Very useful for debugging mistaken assumptions about
   the structure of a document and for extending the vocabulary ok known labels

(print-ready-paragraphs)
  -- These are the cleaned paragraphs we aggregate into sections

|#

;;;-----------------------------
;;; State globals and utilities
;;;-----------------------------

(defparameter *score-json* "~/temp/pre_remote_dicts/"
  "Directory that holds the JSON files")

(defvar *sequence-of-block-texts* nil
  "Set by identify-score-block-texts, holds the list of the texts
   from each block in the JSON. Listed by print-extracted-block-texts")

(defvar *raw-paragraphs* nil
  "Populated in collect-score-json-paragraphs in calls to make-score-paragraph
   on the text directly lifted from the blocks. These are the initial paragraphs
   before any text filter is done to them. Listed by print-raw-paragraphs")

(defvar *ready-paragraphs* nil
  "Set in sort-out-score-paragraphs, these have been filtered for null
   or action paragraphs and are the input to the section-making procedure")

(defvar *score-sections* nil
  "Set by aggregate-score-para-into-sections after they've been knit together
   but before they're added to the article")


;;--- used by test-sp
(defvar p-text "" "cache the sexp of the block we're working on")
(defvar *p* nil "cache the paragraph we've constructed")

(defvar *s-sexp* nil
  "Useful when debugging. Set in nth-json-sexp to the decoding of
   the whole JSON file")

(defun para# (n &optional set-para-list)
  "Retrieve the nth paragraph from the ready-paragraphs list.
   Note that all the lists in this code are zero-based except
   for accessing a the file from the temp directory where we
   add one before accessing"
  (declare (special *ready-paragraphs*))
  (nth n *ready-paragraphs*))

(defun raw-para# (n)
  "Retrieve the nth paragraph from the raw-paragraphs list."
  (declare (special *raw-paragraphs*))
  (nth n *raw-paragraphs*))


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
    "Gelfand_covid_n8dr9" ; #34 can't encode 56319
    "Kachanoff_covid_gy9n7" ; 47 ditto
    "Wise_covid_4qm4q" ; 96 ditto. Also 5741 -- caught by tokenizer so where's the complaint?
    )
  "The reader chokes when reading these file, how to fix (or even debug) this
   isn't clear yet, so simplest to just ignore them")


;;;--------
;;; driver
;;;--------

(defun run-nth-score-article (n &key quiet show-sect stats)
  "Process the nth ('1' -> nth of 0) json article in the directory.
   Assemble paragraphs and sections from the blocks in the source JSON
   to make an article, then pass the article to the standard run-json-article
   function. Keywords are passed through to run-json-article with the usual
   interpretation."
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
      (let* ((article (make-instance 'score-article :n n))
             (*current-article* article))
        (declare (special *current-article*))
        (setq *current-article* article)
        (setf (name article) (intern handle (find-package :sparser)))
        (setf (article-source article) pathname)
        (sort-out-score-paragraphs article sexp)
        (when (children article) ; could have aborted in para. construction
          (run-json-article
           article :quiet quiet :show-sect show-sect :stats stats))
        article))))


;;--- Organizes all the work

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

    (if (or (blocks-include-any 'action-paragraph *raw-paragraphs*)
            action-paragraphs)
      (setq *ready-paragraphs*
            (clean-score-paragraphs (gather-action-paragraphs action-paragraphs)))
      (setq *ready-paragraphs* *raw-paragraphs*))

    (aggregate-score-para-into-sections *ready-paragraphs* article)

    article ))


;;--- text -> paragraphs

(defun identify-score-block-texts (sexp)
  "First step is to collect up the text strings of each block
   in the input sexp of JSON->SEXP forms.
   Stores the result in *sequence-of-block-texts*"
  (declare (special *sequence-of-block-texts*))
  (let ((blocks (locate-blocks-in-json sexp)))
    (let ((texts (loop for b in blocks
                    collect (locate-text-in-score-block b))))
      (setq *sequence-of-block-texts* texts)
      (length texts))))

(defun collect-score-json-paragraphs (sexp)
  "Map through the sexp of the text extracted from each block
   and wrap it in the appropriate type of paragraph.
   Sets the ordered list of objects to *raw-paragraphs* "
  (declare (special *raw-paragraphs*))
  (let ((blocks (locate-blocks-in-json sexp))
        (index -1))
    (let ((paragraphs
           (loop for b in blocks
              as text = (locate-text-in-score-block b)
              collect (make-score-paragraph text (incf index)))))
      (setq *raw-paragraphs* paragraphs)
      (length paragraphs))))


;;;------------------------------------------
;;; Recognizing and removing header material
;;;------------------------------------------

(defun gather-action-paragraphs (tacit-action-paras)
  "Feeder to clear-score-paragraphs -- collects and action-paragraphs
   identified in the paragraph construction sweep and adds in one(s)
   found at the start of the article.  This is guarded by a check that
   these exist, so we have to find something."
  (declare (special *raw-paragraphs*))
  (let ((body-action-paragraphs
         (loop for p in *raw-paragraphs*
            when (eq (type-of p) 'action-paragraph)
            collect p)))
    (format t "~&action paras: ~a in body, ~a tacit~%"
            (length body-action-paragraphs)
            (length tacit-action-paras))
    (or body-action-paragraphs
        tacit-action-paras)))

(defun tacit-running-head? (text-line)
  "Is this line the sort of thing that we'd expect to find as running
   header or maybe footer?"
  (or (when (> (length text-line) 7) ;; line might have just one character on it
        (string-equal "medRxiv" (subseq text-line 0 7)))
      (when (> (length text-line) 19)
        (string-equal "all rights reserved" (subseq text-line 0 19)))))

(defun make-running-head (text-line)
  (let ((p (make-instance  'action-paragraph :flag :running-head)))
    (setf (arg-alist p) `(:header ,text-line))
    p))

(defun clean-score-paragraphs (action-paragraphs)
  "Extract the string to delete from the action paragraphs,
   then sweep over the sequence of paragrahs, collecting them into
   a new list (*ready-paragraphs*). Look for the string in each
   paragraph and modify the content-string of a paragraph to excise it
   if it's there.
     ///////////
"
  (declare (special *raw-paragraphs*
                    *ready-paragraphs*))

  (flet ((lift-string-from-action-para (para)
           "Pull the string to remove out of the paragraph object"
           (let ((string (get-sp-arg para :header)))
             (unless string
               (break "expected action paragraph to have a header"))
             (when (digit-char? (aref string (1- (length string))))
               ;; e.g. "FLOW DURING COVID-19 1" article #90
               (setq string (remove-trailing-whitespace
                             (subseq string 0 (- (length string) 2)))))
             (format t "~&Cleaning instances of ~s~%" string)
             string))
         
         (remove-specified-text (p string-to-remove)
           "If the content string of the paragraph includes this string
            then excise it, replacing the content with the new, shorter string.
            Returns the paragraph (whose identify is unchanged)."
           (typecase p
             (text-paragraph
              (let* ((text-string (content-string p))
                     (index (search string-to-remove text-string)))
                (if index
                  (let* ((before (subseq text-string 0 index))
                         (index-after (+ index (length string-to-remove)))
                         (after (subseq text-string index-after)))
                    (let ((result (string-append before after)))
                      ;;//// check for stranded page numbers
                      ;;// If this is just one line (as in #90) then
                      ;; this operation changes the prefix, thence the print form
                      #+ignore(format t "~&p#~a : before: ~s~% after: ~s~%"
                              (para-index p) (content-string p) result)
                      (setf (content-string p) result)
                      (setf (prefix p) result)
                      p))
                  p)))
             (otherwise ; don't change anything
              p))))
    
    (let ((filter-strings (loop for p in action-paragraphs
                             collect (lift-string-from-action-para p))))
      ;; the paragraphs retain their identities, only the text
      ;; in their content-string fields is affected

      (when (cdr filter-strings)
        (setq filter-strings (remove-duplicates filter-strings :test #'string=)))

      (let ((paragraphs *raw-paragraphs*)
            cleaned )
        ;; updata the paragraphs and 'clean', string by string

        (do ((paragraphs *raw-paragraphs* cleaned)
             (string-to-remove (car filter-strings) (car remaining-strings))
             (remaining-strings (cdr filter-strings) (cdr remaining-strings)))
            ((null string-to-remove))
          (setq cleaned
                (loop for p in paragraphs
                  unless (eq (type-of p) 'action-paragraph)
                  collect (remove-specified-text p string-to-remove))))

        (setq *ready-paragraphs* cleaned)
        cleaned))))
        

    #| original single string operation
        ;; loop over the paragraphs, doing the deletion
        ;; and dropping the action paragraphs on the floor
        (let ((clean
               (loop for p in *raw-paragraphs*
                  unless (eq (type-of p) 'action-paragraph)
                  collect (remove-specified-text p string-to-remove))))


          ;; --> Turn on when the format statement is being used
          ;;(break "Look at the cleaned paragraphs")
          (setq *ready-paragraphs* clean)
          clean )  |#


;;;-----------------------------
;;; From paragraphs to sections
;;;-----------------------------

(defun aggregate-score-para-into-sections (paragraphs article)
  "Loop through the list of paragraph objects and see if we can
   identify larger-scale section-type structure. We also identify
   the title, keywords, etc. and directly fill the slots on the article."
  ;;/// ignoring keyword, authors and other front matter for now
  (declare (special *score-sections*))
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
  "Walk through the paragraphs starting at a heading, and call
   collect-next-section to collect successive sections through to the end
   of the text. The caller (aggregate-score-para-into-sections) knits them
   together"
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
  "Collect the paragraphs from the starting para (a heading-paragraph)
   up to but not including the next header (or the end of the
   list of paragraphs). Make the section object based on the header paragraph.
   Set the accumulated paragraphs to be its children and knit the
   paragraphs together."
  (let* ((header-para (nth header-index paragraph-list))
         (index-of-next (index-of-next-header (1+ header-index) paragraph-list))
         (start (1+ header-index))
         (end (1- index-of-next)))
    (let* ((section-paras
            (loop for i from start to end
               collect (nth i paragraph-list)))
           (s (make-instance 'section)))
      (setup-name-for-score-section s header-para)
      (setf (children s) section-paras)
      (knit-paragraphs section-paras s) ; set previous, next, parent pointers
      (values s
              index-of-next))))

(defun index-of-next-header (start paragraphs)
  "Walk the index across successive paragraphs until
   a 'major' heading-paragraph is reached. Return the value of the index.
   When we're getting to the end of the list of pagagraphs
   we don't expect it to end in a header paragraphs, but we
   aren't checking for that"
  (let* ((index start)
         (max-index (length paragraphs))
         (para (nth index paragraphs)))
    (if (and (null para)
             (= index max-index))
      (1- index) ; we were called at the moment the outer walk had reached the end
      (else
        (until (major-section? para)
            index
          ;; (format t "~&~a ~a" index para) ; prints each paragraph being colected
          (incf index)
          (when (>= index max-index)
            (return-from index-of-next-header (1- index)))
          (setq para (nth index paragraphs)))))))


(defun setup-name-for-score-section (section heading-para)
  "The point is to connect with ignore-this-document-section in the document
   reader. It looks at the title field of the section"
  (let ((name (flag heading-para)) ; e.g. :results
        (string (content-string heading-para))) ; "References"
    (setf (name section) name)
    (setf (title section) (or string
                              name))
    section))



;;--- Article titles

(defun find-a-title-para (paragraphs article)
  "Identify and set the title of the article.
   Return the index of the paragraph that comes just after the title"
  ;;/// doesn't independently account for prior running heads and such
  ;;  And these definitely confuse it. ///Try positioning this ahead ot
  ;;  the clean up
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


;;;--------------
;;; testing jigs
;;;--------------

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

(defun print-ready-paragraphs ()
  (declare (special *ready-paragraphs*))
  (let ((count -1))
    (loop for p in *ready-paragraphs*
       do (format t "~&~a: ~a" (incf count) p))))


(defun test-sp (n) ; 'test score paragraph
  "Call the paragraph maker on the designated json text block.
   Stash text and paragraph on globals"
  (setq p-text (nth n *sequence-of-block-texts*))
  (format t "~&~a: ~s" n p-text)
  ;;(format t "~%~a chars" (length p-text))
  (let ((p (make-score-paragraph p-text)))
    (setq *p* p)
    (format t "~&~a" p)
    p))

   
;;;--------------------------
;;; text -> paragraph object
;;;--------------------------

(defun make-score-paragraph (text index)
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

    ;; null-paragraph
    (when (< length 2)
      (setq p (make-instance 'null-paragraph :flag :too-short :index index))
      (setf (content-string p) text)
      (return-from make-score-paragraph p))
    
    (multiple-value-bind (keyword residue)
        (detect-score-title text)
      (unless keyword
        (if (likely-short-header length text)
          ;; subheading-paragraph
          (then
            (setq p (make-instance 'subheading-paragraph
                                   :flag text :index index))
            (setf (content-string p) text))
          
          (else ;; text-paragraph
            (setq p (make-instance 'text-paragraph :index index))
            (setf (content-string p) text)
            (let ((size (if (> 12 length) length 12)))
              ;;(format t "size: ~a~%" size)
              (setf (prefix p) (subseq text 0 size)))))
        p)
        
      (when keyword
        (case keyword
          (:running-head
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

          ;; heading-paragraph -- no residue
          (otherwise
           (setq p (make-instance
                    'heading-paragraph :flag keyword :index index))
           (setf (content-string p) text)
           (setf (arg-alist p) `(:caption ,text)))))
      
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
  '("References" "Reference list")
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
  '("Running Head"
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
    "Keywords"
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


;;;-------------------------------
;;; walking the JSON s-expression
;;;-------------------------------

(defvar *current-score-json* nil "cache the one we're working on")

(defun locate-blocks-in-json (sexp)
  "Walk through the sexp version of the full JSON expression
    and return the succession of text bocks as a list of sexp"
  (setq *current-score-json* sexp)
  (let ((sub1 (cadr (assq :paper--content sexp))))
    (let ((blocks (cdr sub1)))
      blocks)))

(defun locate-text-in-score-block (sexp)
  "Return the string in the text field of the block.
   Clean up easily noticed unusable characters that can get in the way"
  (let ((children (cadr (assq :children sexp))))
    (unless children (error "no :children field in block?"))
    (let ((text-string (cdr (assq :text children))))
      (when (eql (aref text-string 0) #\no-break_space) ; prints like an underbar
        (setq text-string (subseq text-string 1)))
      (when (position #\no-break_space text-string)
        (setq text-string (substitute #\space #\no-break_space text-string)))
      text-string)))

