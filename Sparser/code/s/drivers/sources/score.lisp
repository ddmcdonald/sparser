;;; -*- Mode: LISP; Syntax: Common-Lisp; Package: (SPARSER LISP) -*-
;;; Copyright (c) 2020 Smart Information Flow Technologies
;;;
;;;     File:  "score"
;;;   Module:  "drivers;sources:"
;;;  Version:  October 2020

(in-package :sparser)

#| File layout of the Sparser facilities for reading SCORE articles

objects/doc/score-articles.lisp

drivers/sources/score-paragraphs.lisp

drivers/sources/score.lisp
  -- This file. 


|#

#| Usage:

;; 1st first prime the pump - 100 articles
 (collect-score-json) ; you can specialize *score-json* parameter to your file setup

;; 2d. Don't parse everything (the list is next to the function)
 (setup-sections-to-ignore-for-score)

;; 3d call the driver with the number of the article you want to parse
 (run-nth-score-article 9 :quiet t :show-sect nil :stats t)
   -- Converts the JSON to our document structure then calls run-json-article,
     with quiet off and show-sect on so you can see the text. Displays the CoV stats

;; Run-nth.. returns the article object.
;; Bind it to 'a' and Look at what the article says
 (write-article-to-file a "~/temp/Score articles/")


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

#| 2do:
-- people's names are taken as bio-entities. Can we incorporate PNF into bio?
-- The running heads are deviously tricky to find, and can incorporate
  useful information inside them, e.g. #25.  Couldn't find it for #27
|#

(defun initialize-score-article-parsing ()
  (declare (special *score-json*))
  (unless (probe-file *score-json*)
    (error "Set *score-json* to where the articles are"))
  (collect-score-json)
  (setup-sections-to-ignore-for-score))

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

(defun blocks-include (flag paragraph-list)
  "Do any of the typed paragraphs in the list have this title?
   Can not be used on text blocks."
  (loop for p in paragraph-list
     when (and (typep p 'score-paragraph)
               (eq (flag p) flag))
     return p))

(defun blocks-include-any (type-name paragraph-list)
  "Are any of the blocks (paragraphs) paragraphs of this type"
  (loop for p in paragraph-list
     when (typep p type-name)
     return p))


;; (collect-score-json)  <--- run before anything else
(defun collect-score-json (&optional (dir *score-json*) (force t))
  "Read out the directory into the standard global
"
  (let ((pathnames
         (directory (merge-pathnames "*.json" dir))))
    (setf *json-files-to-read* 
          (loop for pathname in pathnames
             unless (search "-replace" (pathname-name pathname) :test #'equalp)
             collect (replace-all-lower-surrogates-file pathname force)))
    (length *json-files-to-read*)))

(defparameter *bad-score-files*
  '("Kenyon_covid_87mby" ; 51 ripping of file completely messed up -- just three blocks
    "Lan_covid_l1q6p" ; 55 no heading paragraph until the end
    "Wise_covid_4qm4q" ; 96 ditto. Also 5741 -- caught by tokenizer so where's the complaint?

    ;; bad character places
    "Alyami_covid_yl789" ; Unable to encode character 56319 as :utf-8
    "Bello-Chavolla_covid_rb96l" ; #11 Error during string-to-utf8: Unable to encode character 54 as :utf-8.
    "Gelfand_covid_n8dr9" ; #34 can't encode 56319
    "Kachanoff_covid_gy9n7" ; 47 ditto
    "Hossain_covid_7ol4m" ; 42 ditto -- reader recovers but writer chokes    
    ;; and truncates the file when it reaches that character
    "Du_covid_yl7p9" ; #26 - does substitution for 56319 when reading the JSON
    ))
#|
See Slime issue --  updating Slime solves it?
https://github.com/slime/slime/issues/527

 For #26 it automatically did substitution for 56319 when reading the JSON
but it's still in the file (I presume) and it dies when try to write out the
file with this 'unable to encode' complaint.
   
Invalid protocol message:
Error during string-to-utf8: Unable to encode character 56319 as :utf-8.

(:return (:ok ((":utf-8 stream encoding error on
#<sb-sys:fd-stream
  for \"file /Users/ddm/temp/Score articles/Du_covid-26.txt\"
  {105FD386C3}>:

  the character with code 56319 cannot be encoded." "

  [Condition of type sb-int:stream-encoding-error]" nil)
    (("output-nothing" "Skip output of this character.")
     ("output-replacement" "Output replacement string.")
     ("retry" "Retry SLIME REPL evaluation request.")
     ("*abort" "Return to SLIME's top level.")
     ("abort" "abort thread (#<thread \"repl-thread\" running {10157A8003}>)"))
   ((0 "(sb-impl::stream-encoding-error-and-handle #<sb-sys:fd-stream
           for \"file /Users/ddm/temp/Score articles/Du_covid-26.txt\" {105FD386C3}> 56319)")
    (1 "(sb-impl::output-bytes/utf-8 #<sb-sys:fd-stream for \"file /Users/ddm/temp/Score articles/Du_covid-26.txt\" {105FD386C3}> \"Hongfei Du, Department of Psychology, Guangzhou University, Guangzhou, China. E..") 
    (2 "(sb-impl::fd-sout #<sb-sys:fd-stream for \"file /Users/ddm/temp/Score articles/Du_covid-26.txt\" {105FD386C3}> \"Hongfei Du, Department of Psychology, Guangzhou University, Guangzhou, China. Email\xDBFF\xDC02dhfps..") 
    (3 "(sb-impl::%write-string \"Hongfei Du, Department of Psychology, Guangzhou University, Guangzhou, China. Email\xDBFF\xDC02dhfpsy@gmail.com\" #<sb-sys:fd-stream for \"file /Users/ddm/temp/Score articles/Du_covid-26...") 
    (4 "((labels sb-impl::handle-it :in sb-kernel:output-object) #<sb-sys:fd-stream for \"file /Users/ddm/temp/Score articles/Du_covid-26.txt\" {105FD386C3}>)") 
    (5 "(princ \"Hongfei Du, Department of Psychology, Guangzhou University, Guangzhou, China. Email\xDBFF\xDC02dhfpsy@gmail.com\" #<sb-sys:fd-stream for \"file /Users/ddm/temp/Score articles/Du_covid-26.txt\" {105FD386C3}..") 
    (6 "((lambda (stream #:format-arg352 &rest sb-format::args) :in \"/Users/ddm/sparser/Sparser/code/s/objects/doc/print-article.lisp\") #<sb-sys:fd-stream for \"file /Users/ddm/temp/Score articles/Du_covid-26...") 
    (7 "(format #<sb-sys:fd-stream for \"file /Users/ddm/temp/Score articles/Du_covid-26.txt\" {105FD386C3}> #<FUNCTION (lambda (stream #:format-arg352 &rest sb-format::args) :in \"/Users/ddm/sparser/Sparser/cod..") 
    (8 "((:method write-out-document (heading-paragraph t)) #<heading-paragraph 1 corresponding-author> #<sb-sys:fd-stream for \"file /Users/ddm/temp/Score articles/Du_covid-26.txt\" {105FD386C3}>) [fast-method.." (:restartable t)) 
    (9 "((:method write-out-document (section t)) #<section metadata> #<sb-sys:fd-stream for \"file /Users/ddm/temp/Score articles/Du_covid-26.txt\" {105FD386C3}>) [fast-method]" (:restartable t))) (959 958))) 959)
    ) |#

 


;;;--------
;;; driver
;;;--------



(defun run-nth-score-article (n &key quiet show-sect stats (skip-errors t))
  "Process the nth ('1' -> nth of 0) json article in the directory.
   Assemble paragraphs and sections from the blocks in the source JSON
   to make an article, then pass the article to the standard run-json-article
   function. Keywords are passed through to run-json-article with the usual
   interpretation."
  (declare (special *json-files-to-read*))
  (unless *json-files-to-read*
    (initialize-score-article-parsing))
  (let* ((pathname (nth (1- n) *json-files-to-read*))
         (filename (pathname-name pathname))
         (handle (subseq filename 0 (position #\_ filename :from-end t))))
    ;; (when (member filename *bad-score-files* :test #'string-equal)
    ;;   (format t "~&Ignoring bad file: ~a" filename)
    ;;   (return-from run-nth-score-article nil))
    (read-score-json-article
     pathname :handle handle :n n :quiet quiet :show-sect show-sect :stats stats :skip-errors skip-errors)))

(defun run-score-json-file (namestring &key handle quiet show-sect stats)
  (let ((pathname (pathname namestring)))
    (unless (probe-file pathname)
      (error "Can't find ~a" namestring))
    (let ((handle-to-use (or handle
                             (file-namestring pathname))))
      (read-score-json-article
       pathname :handle handle-to-use :n 1001
       :quiet quiet :show-sect show-sect :stats stats))))



(defun read-score-json-article (pathname &key n handle style quiet show-sect stats (skip-errors t))
  (let ((filename (pathname-name pathname)))
    (format t "~&Reading ~a~%" filename)
    (let ((sexp (cl-json::decode-json-from-source pathname)))
      (let* ((article (make-instance 'score-article :n n))
             (*current-article* article))
        (declare (special *current-article*))
        (setq *current-article* article)
        (setf (name article) (intern handle (find-package :sparser)))
        (setf (article-source article) pathname)
        (sort-out-score-paragraphs article sexp)
        (if (children article) ; could have aborted in para. construction
          (run-json-article
           article :quiet quiet :show-sect show-sect :stats stats
           :skip-errors skip-errors ;; :skip-errors nil catch errors for debugging
           )
          (format t "~%~%No paragraphs in article ~s~%" article))
        (save-article (pathname-name pathname) article)
        
        article))))


;;--- Organizes all the work

(defun sort-out-score-paragraphs (article sexp)
  "Pull the paragraph text out of the JSON blocks. Type them and filter
   out text from headers when we can identify it as such.
   Then group ordinary blocks inside sections created from the headers.
   When that dust settles, assign the results to fields in the article."
  (declare (special *sequence-of-block-texts* *raw-paragraphs*
                    *ready-paragraphs* ))

  (let ((length (identify-score-block-texts sexp)))
    ;; populates *sequence-of-block-texts*  (print-extracted-block-texts)

    (when (>= 2 length)
      (format t "~%Only ~a text block(s) in the JSON. Aborting~%~a"
              length (article-source article))
      (setf (children article) nil) ; indication that we're punting
      (return-from sort-out-score-paragraphs nil))
    
    (collect-score-json-paragraphs sexp) ;; -> *raw-paragraphs*
    ;; (print-raw-paragraphs)

    (collect-title-and-meta-data article *raw-paragraphs*)

    (let ((action-paragraphs (gather-action-paragraphs *raw-paragraphs*)))
      (setq *ready-paragraphs*
            (if action-paragraphs
              (clean-score-paragraphs action-paragraphs)
              *raw-paragraphs*))

      (aggregate-score-para-into-sections *ready-paragraphs* article)
      ;; (children article)

      article )))


;;--- text -> paragraphs

(defun identify-score-block-texts (sexp)
  "First step is to collect up the text strings of each block
   in the input sexp of JSON->SEXP forms.
   Stores the result in *sequence-of-block-texts*,
   Returns the length."
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
  (declare (special *raw-paragraphs* *paragraph-index*))
  (let ((blocks (locate-blocks-in-json sexp)))
    (setq *paragraph-index* -1)
    (let ( text paragraph  paragraphs )
      (dolist (b blocks)
        (setq text (locate-text-in-score-block b))
        (setq paragraph (make-score-paragraph text))
        (cond
          ((null paragraph)) ;; one character text. 
          ((consp paragraph)
           (loop for p in paragraph do (push p paragraphs)))
          (t (push paragraph paragraphs))))
      (setq paragraphs (nreverse paragraphs))
      (setq *raw-paragraphs* paragraphs)
      (length paragraphs))))


;;;------------------------------------------
;;; Recognizing and removing header material
;;;------------------------------------------

(defvar *print-action-para-info* t
  "lets us turn it off")

(defun gather-action-paragraphs (raw-paragraphs)
  "Feeder to clear-score-paragraphs -- collects and action-paragraphs
   identified in the paragraph construction sweep"
  (declare (special *print-action-para-info*))
  (let ((action-paragraphs
         (loop for p in raw-paragraphs
            when (eq (type-of p) 'action-paragraph)
            collect p)))
    (when action-paragraphs
      (when *print-action-para-info*
        (format t "~& ~a action paragraphs~%" (length action-paragraphs)))
      action-paragraphs)))


(defun clean-score-paragraphs (action-paragraphs)
  "Extract the strings to delete from the action paragraphs,
   then sweep over the sequence of paragrahs, collecting them into
   a new list (*ready-paragraphs*). Look for the string in each
   paragraph and modify the content-string of a paragraph to excise it
   if it's there."
  ;; The paragraphs retain their identities, only the text
  ;; in their content-string fields is affected
  (declare (special *raw-paragraphs* *ready-paragraphs*
                    *print-action-para-info*
                    *index-after-metadata*))

  (labels ((lift-string-from-action-para (para)
           "Pull the string to remove out of the paragraph object"
           (let ((string (get-sp-arg para :header)))
             (unless string
               (break "expected action paragraph to have a header"))
             (when (digit-char? (aref string (1- (length string))))
               ;; e.g. "FLOW DURING COVID-19 1" article #90
               (setq string (remove-trailing-whitespace
                             (subseq string 0 (- (length string) 2)))))
             string))

         (remove-numbers (string)
           "walk up the string from the beginning, shortening it as spaces
            and numbers are encountered. If an alphabetic character is encountered
            first then the triggering number must be further on and should stay"
           (let ((index -1))
             (loop for c across string ; remove leading space(s)
                do (if (eql c #\space) (incf index) (return)))
             (setq string (subseq string (1+ index))
                   index 0)
             (when (digit-char? (aref string 0))
               (loop for d across string
                  do (if (digit-char? d) (incf index) (return)))
               (setq string (subseq string index)))
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
                    (when (some #'digit-char? after)
                      (setq after (remove-numbers after)))
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

    (when action-paragraphs ; set by gather-action-paragraphs and could be nil
      (let ((filter-strings (loop for p in action-paragraphs
                               collect (lift-string-from-action-para p))))

        (when (cdr filter-strings)
          (when (> (length filter-strings) 3)
            ;; They're likely in their own blocks so we just take the first few
            ;; ///Ought to be a function to do this
            (setq filter-strings (loop for i from 0 to 2
                                    as string = (nth i filter-strings)
                                    collect string)))
          (setq filter-strings (remove-duplicates filter-strings :test #'string=)))

        (let ((paragraphs *raw-paragraphs*)
              cleaned )
          ;; updata the paragraphs and 'clean', string by string

          (do ((paragraphs *raw-paragraphs* cleaned)
               (string-to-remove (car filter-strings) (car remaining-strings))
               (remaining-strings (cdr filter-strings) (cdr remaining-strings)))
              ((null string-to-remove))
            (when *print-action-para-info*
              (format t "~&Cleaning instances of ~s~%" string-to-remove))

            (setq cleaned
                  (loop for p in paragraphs
                     unless (eq (type-of p) 'action-paragraph)
                     collect (remove-specified-text p string-to-remove))))

          (let ((delta (- (length *raw-paragraphs*)
                          (length cleaned))))
            (when *print-action-para-info*
              (format t "Removed ~a paragraphs from the raw list" delta))
            (setq *index-after-metadata* (- *index-after-metadata* delta))

            (setq *ready-paragraphs* cleaned)
            cleaned))))))



;;;-----------------------------
;;; From paragraphs to sections
;;;-----------------------------

(defun aggregate-score-para-into-sections (paragraphs article)
  "Loop through the list of 'ready' paragraph objects and see if we can
   identify larger-scale section-type structure. We also identify
   the title, keywords, etc. and directly fill the slots on the article."
  ;;/// ignoring keyword, authors and other front matter for now
  (declare (special *score-sections*
                    *index-after-metadata*))
  (let ((index -1)
        (max-index (length paragraphs))
        meta-section  index-after-title
        first-section-head
        p  section sections  index-of-next  )
    
    ;; The article may have gotten a title and an initial 'meta-data'
    ;; section attached to it. We start there to aggregate the next set
    ;; of paragraphs into sections.
    (if (children article)
      (setq meta-section (children article)) ; singleton - not a list
      (break "?? no meta-data ??"))
 
    ;; (setq index-after-title (1+ (index-of-final-paragraph meta-section)))

    ;; Start with the heading paragraph that collect-title-and-meta-data
    ;; identified as the index of the header paragraph that
    ;; terminated the metadata paragraph
    (setq first-section-head *index-after-metadata*)

    ;; (index-of-next-header index-after-title paragraphs)
    
    (when (= first-section-head max-index) ;; #55
      (break "Meta-section runs to the end"))
 
    ;; From that section head, loop through the rest of the
    ;; paragraphs. Creat a new section at each heading whose children
    ;; are the paragraphs from there to just before the next heading
    (setq sections
          (cons meta-section
                (collect-all-the-sections first-section-head paragraphs)))

    (knit-sections sections article)
    (setq *score-sections* sections)

    (setf (children article) sections)
    article ))


(defun collect-all-the-sections (starting-at paragraph-list)
  "Walk through the paragraphs starting at a heading, and call
   collect-next-section to collect successive sections through to the end
   of the text. The caller (aggregate-score-para-into-sections) knits them
   together.  
   New wrinkle - heading-paragraph for :keywords marks end of a section (abstract)"
  (let ((max-index (1- (length paragraph-list)))
        sections  section  header-index  index-of-next )
    (setq header-index starting-at)
    (loop
       ;; (setq index-of-next (index-of-next-header header-index paragraph-list))
       ;; (break "next-header: ~a" index-of-next)
       ;; (setq section (collect-next-section header-index ; starting-at / given header
       ;;                                     index-of-next ; the follow header
       ;;                                     paragraph-list))
       (multiple-value-setq (section index-of-next)
         (collect-next-section header-index paragraph-list))

       (push section sections)
       (when (>= index-of-next max-index)
         (return))
       (setq header-index index-of-next))
    (nreverse sections)))

#| When we encounter a section-parser-ignore? pagragraph (like references)
then we start making sections for significant-heading? paragraphs so the
parser will get to see them.
|#

(defun index-of-next-header (start paragraphs)
  "Walk the index across successive paragraphs until a 'major' 
   heading-paragraph is reached or a heading-paragraph for Keywords. Return the value of the index.
   When we're getting to the end of the list of pagagraphs we don't
   expect them to end in a header paragraphs, but we aren't checking for that"
  (let* ((index start)
         (max-index (length paragraphs))
         (para (nth index paragraphs))
         (saw-keywords nil)
         )
    (if (and (null para)
             (= index max-index))
      ;; Then we were called at the moment the outer walk had reached the end
      ;; index ;;(break "index: ~a" index)
      (1- index) 
      (else
        (until (or (major-section? para) saw-keywords)
            index
          ;; (format t "~&~a ~a" index para) ; prints each paragraph being colected
          (setf saw-keywords (and (typep para 'heading-paragraph)
                                  (eq (flag para) :keywords)))
          (incf index)
          (when (>= index max-index)
            (return-from index-of-next-header (1- index)))
          (setq para (nth index paragraphs)))))))

(defun collect-next-section (header-index #|ndex-of-next|# paragraph-list)
  "Collect the paragraphs from the starting para (a heading-paragraph) -- ( not always a heading for section 1 - mb)
   up to but not including the next header (or the end of the
   list of paragraphs). Keywords line can end the Abstract section.  Make the section object based on the header paragraph.
   Set the accumulated paragraphs to be its children and knit the
   paragraphs together."
  (let ((header-para (nth header-index paragraph-list)))
    #+ignore ;; may not be a header if right after abstract
    (unless (typep header-para 'heading-paragraph)
      (break "The para pointed to by ~a is not a header" header-index))
    
    (let* ((index-of-next (index-of-next-header (1+ header-index) paragraph-list))
           (start (1+ header-index))
           (end (1- index-of-next)))
      
      (let* ((section-paras
              (loop for i from start to end
                 collect (nth i paragraph-list)))
             (s (make-instance 'section)))
        (setup-name-for-score-section s header-para)
        (setf (children s) section-paras)
        (knit-paragraphs section-paras s) ; set previous, next, parent pointers
        (values s index-of-next) ))))


(defun setup-name-for-score-section (section heading-para)
  "The point is to connect with ignore-this-document-section in the document
   reader. It looks at the title field of the section"
  (let ((name (flag heading-para)) ; e.g. :results
        (string (content-string heading-para))) ; "References"
    (setf (name section) name)
    (if (and string (not (string-equal "" string)))
      (setf (title section) string)
      (else ; use the name
        (let ((title-string (string-capitalize (symbol-name name))))
          (setf (title section) title-string))))
    section))



;;;---------------------------------------------
;;; Article titles, and pre-abstract meta-data
;;;---------------------------------------------

(defvar *index-after-metadata* nil
  "This is the index of the next paragraph after the end of the
   metadata section. It is used by aggregate-score-para-into-sections
   to indicate where to start searching for the next section.
   Since we do an index-of-next-header search here, this will index
   will point to a header paragraph.")

(defun collect-title-and-meta-data (article raw-paragraphs)
  "Called from sort-out-score-paragraphs before their running heads
   have been cleaned. Tries to identify the title, then collects
   all the raw paragraphs between there and the first major overt section
   (usually Abstract), and creates a section for them with the name 'Meta-data'.
   It attaches the section to the article where aggregate-score-para-into-sections
   will notice it and include it with the other sections.
   It is also responsible for setting *index-after-metadata* which is used
   to communicate the see index to its call to collect-all-the-sections"
  (declare (special *index-after-metadata*))
  (let* ((explicit-title (or (blocks-include :title raw-paragraphs)
                             (blocks-include :short-title raw-paragraphs)))
         (title ;; the paragraph, not the string yet
          (or explicit-title
              ;; first regular paragraph, e.g. skip leading action paragraphs
              (loop for p in raw-paragraphs
                 when (typep p 'text-paragraph)
                 return p)))
         (title-index (para-index title)))

    (setf (title article) (content-string title))

    (let* ((index-of-next-header (index-of-next-header title-index raw-paragraphs))
           ;; The paragraph at this index is a header-paragraph
           (section-paras
            (loop for i from (1+ title-index) to (1- index-of-next-header)
               collect (nth i raw-paragraphs))))
      (let ((s (make-instance 'section)))
        (setf (name s) :metadata)
        (setf (title s) "MetaData") ;// goes on ignore list
        (setf (children article) s)
        (if section-paras
          (then
            (setf (children s) section-paras)
            (knit-paragraphs section-paras s)
            (setq *index-after-metadata*
                  (1+ (para-index (car (last section-paras))))))
          (else
            ;; Can happen when the abstract immediately follows
            ;; the title, e.g. #1
            (setq *index-after-metadata* index-of-next-header)))
        ;;(break "look at indexes")
        ;; Check that the global is correct
        #+ignore(let ((next-header (nth *index-after-metadata* raw-paragraphs)))
          (unless (typep next-header 'heading-paragraph)
            (break "index of next ~a is no pointing at a header"
                   *index-after-metadata*))) ))))



;;/// move
(defun index-of-final-paragraph (section)
  "Return the para-index of the final paragraph in this section"
  (let* ((paragraphs (children section))
         (last-para (car (last paragraphs))))
    (when last-para
      (para-index last-para))))

(defun title-paragraph? (p)
  "Is this paragraph exlicitly marked as a title?"
  (when (and (typep p 'heading-paragraph)
             (memq (flag p) '(:title :short-title)))
    (setf (content-string p) (get-sp-arg p :text))
    p))

 
(defun score-article-sentences (score-article &key (strings? t))
  (loop for p in (paragraphs-in-doc-element score-article)
        as p# from 1 by 1
        append
        (loop for s in (sentences-in-paragraph p)
              as s# from 1 by 1
              collect
              (list (pname (name score-article))
                    (format nil "p:~s s:~s"  p# s#)
                    (if strings?
                        (sentence-string s)
                        s)))))


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
  "Call the paragraph maker on the designated nth json text block.
   Stash text and paragraph on globals"
  (setq p-text (nth n *sequence-of-block-texts*))
  (format t "~&~a: ~s" n p-text)
  ;;(format t "~%~a chars" (length p-text))
  (let ((p (make-score-paragraph p-text)))
    (setq *p* p)
    (format t "~&~a" p)
    p))


(defun score-articles-timing-run (start-index last-index &key (skip-errors t))
  "Iterate over the articles from start to last, inhibiting most
   sources of status/error printing and providing a compact
   description of the timing status on each article.
   Mask any errors along the way."
  (let ((*print-action-para-info* nil)
        (*show-handled-sentence-errors* nil))  ;; RJB use T for debugging
    (declare (special *print-action-para-info*
                      *show-handled-sentence-errors*))
    (loop for n from start-index to last-index
       do (progn
            (format t "~&~%--- #~a~%" n)
            (print (list n 'hhh))
            (force-output t)
            (ignore-errors
               (run-nth-score-article n :quiet t :show-sect nil :stats nil :skip-errors skip-errors)
               ;;(run-nth-score-article n :quiet nil :show-sect nil :stats nil)
              )
            (force-output t)))))


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

