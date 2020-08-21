;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 2013-2020 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "object"
;;;   Module:  "objects;doc;"
;;;  Version:  August 2020

;; Created 2/6/13 to solve the problem of keeping document/section context.
;; [sfriedman:20130206.2038CST] I'm writing this using /objects/chart/edges/object3.lisp as an analog.
;; 3/29/13 hooked articles into document-set.
;; 1.0 (7/15/13) Bumped to add sentence and to get more uniformity on
;;      operations like noting and operations on contents.
;;     (9/23/13) Pretty much finished with the make-over except for occasional fanout.
;; 1.1 (10/3/13) Making paragraphs real. Lifting out the generalization
;;     (10/26/13) Added word-frequency mixin to article. What about the others?
;;     (4/9/14) Moved in the get-document code from objects/doc/article1 so that
;;      some older code is happy. 
;; 1.2 Adding print methods and tweaking initializations to accommodate
;;      read-from-document through 4/27/15
;;     4/28/15 added section-of-sections
;;     6/14/15 Added a sentence to title-text. 7/2/15 Added iniform nil
;;     to a few cases that didn't have it already. 

(in-package :sparser)

;;;---------------------
;;; generalization type
;;;---------------------

(defclass document-element (chart-region document-region
                            has-parent has-children
                            ordered indexed word-frequency
                            has-content-model)
  ()
  (:documentation "Provides a super-type with common set of slots
    and behavior for all of the classes that describe portions
    of a document. Not every slot pertains to every object, but
    enough do that the benefits of uniformity outweight the
    possible lose in efficiency."))


(defmethod print-object ((e document-element) stream)
  (print-unreadable-object (e stream :type t)
    (when (and (slot-boundp e 'name)
               (name e))
      (format stream " ~a" (name e)))
    (when (and (slot-boundp e 'starts-at-pos)
               (starts-at-pos e))
      (format stream " p~a" (pos-token-index (starts-at-pos e))))
    (when (and (slot-boundp e 'ends-at-pos)
               (ends-at-pos e))
      (format stream "--p~a" (pos-token-index (ends-at-pos e))))))


;;--- impedence-matching

(defparameter *use-reader-convention* t
  "Need to switch over the text driven conventions about how
 the elements of a document connect, but want to notice fanout.
 So this conditions the changes. When it's all settled we flush it.")

(defun append-doc-element-to-children-of-parent (e)
  "Compare to r3::add-as-new-child which is what we're emulating"
  (let ((parent (parent e)))
    (assert parent)
    (let ((children (children parent)))
      (etypecase children
        (document-element
         (setf (children parent) (list children e)))
        (cons
         (tail-cons e children))))))


;;;-----------------------------------
;;; Titled entities
;;;-----------------------------------

(defclass titled-entity ()
  ((title :initform nil :accessor title
   :documentation "Provides a title slot for the Title-text 
      of the entity.")))

;;;---------------
;;; String mix-in
;;;---------------

(defclass string-holder ()
  ((content-string :initform "" :accessor content-string
   :documentation "The text content of the element")))

;;;------------
;;; Title-text
;;;------------

(defclass title-text (document-element named-object string-holder)
  ()
  (:documentation "A title of a section or article."))

(defmethod print-object ((title title-text) stream)
  (print-unreadable-object (title stream :type t)
    (when (slot-boundp title 'content-string)
      (format stream "~s" (content-string title)))))

(define-resource title-text)

(defun initialize-title-text-resource ()
  (initialize-resource (get-resource :title-text)))

(defun allocate-title-text ()
  (allocate-next-instance (get-resource :title-text)))

(defun extract-titles-from-other-elements (doc-elements)
  "In some nmxl documents, some sections can have multiple 'titles'.
   If that is the case, then we merge the text of those
   title-text objects into a single new object.
   Returns the (possibly merged) title and the other,
   non-title elements."
  (declare (special *sentence-making-sweep*
                    *current-document-element*))
  (let* ((titles (loop for e in doc-elements
                   when (typep e 'title-text)
                    collect e))
         (multiple? nil)
         (title (when titles
                  (if (null (cdr titles))
                    (car titles)
                    (let* ((texts (loop for tt in titles
                                     collect (content-string tt)))
                           (tt (make-instance 'title-text))
                           (text-strings ;; pad witt space
                            (loop for text in texts
                               collect (string-append text " "))))
                      (setq multiple? t)
                      (setf (content-string tt)
                            (apply #'string-append text-strings))
                      tt))))
         (rest (loop for e in doc-elements
                  unless (typep e 'title-text)
                  collect e)))

    ;; (run-an-article :id "3640864" :corpus :localization :epi nil :read nil)
    (when multiple?
      (when *sentence-making-sweep*
        (let ((parent (replace-title-text-in-multiples
                       title ;; newly created, merged title
                       titles))) ;; originals to excise
          (push-debug `(,parent ,titles ,title))
          #+ignore(lsp-break "parent's children: ~a" (children parent)))))

    (when title
      (when (= (length (content-string title)) 0)
        ;; This causes a cascade of problems at many points.
        ;; Solution appears to be to splice out this element
        ;; and proceed as if it didn't exist.
        (remove-title-text-from-document title)
        (setq title nil)))
      
    (when title
      ;; rest is nil in "Supporting Information" in ASPP2
      (let ((parent *current-document-element*))
        (setf (parent title) parent)
        (set-document-index title "title")))

    (when title
      (unless (contents title) ;; unless we already did this ...
        (setup-title-as-sentence-container title)))
    
    (values title rest multiple?)))


(defun setup-title-as-sentence-container (title)
  (install-contents title) ;; like paragraph
  (let ((s (make-instance 'sentence)) ;; permanent
        (string (content-string title)))
    ;;/// look at some cases of multiple titles
    ;; to see if they want to be multple sentences
    (unless (eql #\. (char string (1- (length string))))
      (setq string (string-append string "."))
      (setf (content-string title) string))

    ;; cribing from start-sentence
    (setf (contents s) (make-sentence-container s))
    (setf (starts-at-pos s) (position# 1))
    (setf (starts-at-char s) 1)
    (setf (previous s) nil)
    (setf (parent s) title)
    (setf (children title) s)
    
    (read-paragraph-guts title)
    title))

(defun replace-title-text-in-multiples (replacement tt-to-remove)
  (let* ((first (car tt-to-remove))
         (parent (parent first))
         (daughters (children parent)))
    (loop for tt in tt-to-remove
       do (setq daughters (remove tt daughters)))
    #+ignore(lsp-break "daughters = ~a" daughters)
    (setf (children parent) (cons replacement daughters))
    parent))

(defun remove-title-text-from-document (tt)
  (let* ((parent (parent tt))
         (daughters (children parent)))
    (assert (eq tt (first daughters)))
    (setf (children parent) (cdr daughters))))



;;;-----------------------------------
;;; Articles (whole documents/files)
;;;-----------------------------------

(defclass article (document-element named-object titled-entity)
  ((location :initform nil :accessor article-location
    :documentation "Usually a short form of the file name")
   (date :initform nil :accessor article-date
    :documentation "In principle should be a date object, but
     in practice just a string encoding the date")
   (source :initform nil :accessor article-source
    :documentation "The pathname of the document"))
  (:documentation "Representation of a document as a whole.
    Provides a top most reference point that paragraphs and
    sentences, etc. top out at. Has representations of attributes
    that apply to the whole article, typically taken from
    the dateline if it's a news article."))

(defmethod print-object ((a article) stream)
  (print-unreadable-object (a stream :type t)
    (format stream " ~a" (name a))
    (when (article-date a)
      (unless (string-equal (article-date a) "date-unknown")
        (format stream " ~a" (article-date a))))))

(define-resource article)

(defun initialize-article-resource ()
  ;; called from initialize-document-element-resources
  (initialize-resource (get-resource :article)))

(defmethod clear ((a article))
  (setf (article-location a) nil)
  (setf (article-date a) nil)
  (setf (article-source a) nil)
  (setf (contents a) nil)
  (call-next-method))

(defun allocate-article ()
  (allocate-next-instance (get-resource :article)))

(defparameter *current-article* nil
  "Bound by any of the drivers that analyze whole articles. The
   value is an article object.")
(defun article () *current-article*)

;;--- Where everything starts on each analysis run
;;
(defun begin-new-article (&key name location date source)
  "Called from per-article-initializations, which is
   called from analysis-core, which is called from
   either analyze-text-from-string or analyze-text-from-file
   though you can get to per-article-initializions from
   do-document-as-stream-of-files -- Responsible for
   kicking off the initialization (creation and linking
   of first instances) of all the other document elements."
  (let ((obj (allocate-article)))
    (setf (name obj) (or name (known-in-context :name)))
    (setf (article-location obj)
          (or location (known-in-context :location)))
    #+ignore(setf (article-date obj)
          (or date (date-&-time-as-formatted-string)))
    (setf (article-source obj)
          (or source (known-in-context :source)))
    (setf (contents obj)
          (install-contents obj))
    (setf *current-article* obj)
    (add-to-document-set obj)
    (initialize-sections) ;; make the 1st section
    obj))



;;;----------
;;; Sections
;;;----------

(defclass section (document-element named-object titled-entity)
  ()
  (:documentation "A toplevel unit within a document that
   is several paragraphs long."))

(defmethod print-object ((s section) stream)
  (print-unreadable-object (s stream :type t)
    (cond
      ((and (slot-boundp s 'title)
            (typep (title s) 'title-text))
       (format stream "~s" (content-string (title s))))
      ((and (slot-boundp s 'name) ;; named-object pattern
            (name s))
       (format stream "~a" (name s))))))

(define-resource section)

(defun initialize-section-resource ()
  ;; called from initialize-document-element-resources
  (initialize-resource (get-resource :section))) ;; clears everything

(defvar *current-section* nil
  "The section we are reading inside of at the moment")
(defun section () *current-section*)

(defvar *previous-section* nil
  "The section before the present one")

(defun initialize-sections ()
  ;; Called from begin-new-article in per-article-initializations
  (setq *current-section* nil)
  (let ((s1 (new-section-in-article nil (position# 1)))
        (article *current-article*))
    (setq *previous-section* nil
          *current-section* s1)
    (setf (children article)
          (if *use-reader-convention* `(,s1) s1))
    (setf (parent s1) article)
    (setf (children s1)
          (if *use-reader-convention*
              `(,(initialize-paragraphs))
              (initialize-paragraphs)))))
          

(defmethod clear ((s section))
  (setf (parent s) nil) ;; these need their own clear's
  (setf (name s) nil)
  (setf (contents s) nil)
  (call-next-method))

(defun allocate-section ()
  (allocate-next-instance (get-resource :section)))

(defun new-section-in-article (sec-name start-pos)
  (let ((s (allocate-section))
        (name (or sec-name (next-indexical-name :section)))
        (ongoing *current-section*))
    (unless *current-article*
      (error "Threading bug - expected a value on *current-article*"))
    (setf (parent s) *current-article*) ;; not just chain them?
    (setf (name s) name)
    (setf (starts-at-pos s) start-pos)
    (setf (starts-at-char s) (pos-character-index start-pos))
    (setf (contents s) (install-contents s))
    (when ongoing
      (setf (next ongoing) s)
      (setf (previous s) ongoing)
      (setf (ends-at-pos ongoing) start-pos)
      (setf (ends-at-char ongoing) (pos-character-index start-pos))
      (setq *previous-section* ongoing)
      (append-doc-element-to-children-of-parent s))  
    (setq *current-section* s)
    s))

;;;----------------------------------------
;;; A section that contains other sections
;;;----------------------------------------

(defclass section-of-sections (document-element named-object titled-entity)
  ()
  (:documentation "Motivated by the NXML for PubMed articles where there
    can be multiple titled 'section' elements within a section.
    Doesn't appear to be recursive."))

(defmethod print-object ((s section-of-sections) stream)
  (print-unreadable-object (s stream :type t)
    (when (and (slot-boundp s 'title)
               (typep (title s) 'title-text))
      (format stream "~s" (content-string (title s))))))

(define-resource section-of-sections)

(defun allocate-section-of-sections ()
  (allocate-next-instance (get-resource :section-of-sections)))


;;;------------
;;; Paragraphs
;;;------------

(defclass paragraph (document-element named-object string-holder)
  ()
  (:documentation "Either An orthographic paragraph as established
    by patterns of newlines (see sort-out-result-of-newline-analysis)
    or a document element delimited by XML markup."))

(define-resource paragraph)

(defmethod print-object ((p paragraph) stream)
  (print-unreadable-object (p stream :type t)
    (let ((toc (when (slot-boundp p 'toc-index)
                 (toc-index p))))
      ;; it's nil until until the first call to install-contents
      (format stream "~a" (or toc (doc-index p))))))

(defun allocate-paragraph ()
  (allocate-next-instance (get-resource :paragraph)))

(defvar *previous-paragraph* nil
  "The paragraph just before the current one")

(defvar *current-paragraph* nil
  "points to the paragraph whose text is being analyzed")

(defun paragraph () *current-paragraph*)

(defun initialize-paragraph-resource ()
  ;; called from initialize-document-element-resources
  (initialize-resource (get-resource :paragraph))
  (setq *current-paragraph* nil
        *previous-paragraph* nil))

(defmethod clear ((p paragraph))
  (setf (content-string p) "")
  (setf (name p) nil)
  (setf (contents p) nil)
  (setf (previous p) nil)
  (setf (next p) nil)
  (setf (children p) nil)
  (setf (parent p) nil)
  (setf (starts-at-pos p) nil)
  (setf (ends-at-pos p) nil)
  (setf (starts-at-char p) nil)
  (setf (ends-at-char p) nil))

(defun initialize-paragraphs ()
  ;; Called from initialize-sections, which is usually
  ;; called by begin-new-article
  (initialize-paragraph-resource)
  (let ((p (begin-new-paragraph (position# 1)))
        (section *current-section*))
    (unless section
      (error "Threading bug: no value for *current-section*"))
    (setf (parent p) section)
    (setf (children section)
          (if *use-reader-convention* `(,p) p))
    (initialize-sentences)
    p))

(defun begin-new-paragraph (start-pos)
  (let ((p (allocate-paragraph))
        (ongoing *current-paragraph*))
    (setf (name p) (next-indexical-name :paragraph))
    (setf (starts-at-pos p) start-pos)
    (setf (contents p) (install-contents p))
    (if (pos-character-index start-pos)
      (setf (starts-at-char p) (pos-character-index start-pos))
      (setf (starts-at-char p) 1))
    (when ongoing
      (setf (previous p) ongoing)
      (setf (next ongoing) p)
      (setf (ends-at-pos ongoing) start-pos)
      (setf (ends-at-char ongoing) (pos-character-index start-pos))
      (setf (parent p) (parent ongoing))
      (setq *previous-paragraph* ongoing)
      (append-doc-element-to-children-of-parent p))
    (setf *current-paragraph* p)
    p))




;;;----------
;;; Sentence
;;;----------

(defclass sentence (document-element)
  ((string :initform "" :accessor sentence-string
    :documentation "The string from the character buffer
      from its first character up to but not including the
      period. Since it comes from the character buffer it
      has the original capitalization."))
  (:documentation
   "Represents the content or other interesting features
    of a sentence within the text. If there is an active section or
    paragraph that is parent."))

(defmethod print-object ((s sentence) stream)
  (print-unreadable-object (s stream :type t)
    (if (and (slot-boundp s 'starts-at-pos)
             (starts-at-pos s))
      (format stream "p~a -- "
              (pos-token-index (starts-at-pos s)))
      (format stream "? -- "))
    (if (and (slot-boundp s 'ends-at-pos)
               (ends-at-pos s))
      (format stream "p~a" (pos-token-index(ends-at-pos s)))
      (format stream "?"))))


;;--- traversing through the sentence chain

(defvar *current-sentence* nil
  "Gets its initial value from either initialize-sentences 
 (for prepopoulated documents) or start-sentence (which is
 the constructor for successive sentences that follow the first
 'current' sentence. When we are parsing a succession of
 sentences it is set in sweep-successive-sentences-from to
 the sentence object that is being worked on.")

(defun sentence () *current-sentence*)

(defvar *previous-sentence* nil
  "Set in start-sentence when the next sentence is being created.
 It is NOT updated when we're parsing and looping over a chain of
 existing sentences.")
(defun previous-sentence () *previous-sentence*)

(defun current-sentence ()
  "Heuristically samples global variables that track the sentence
   that the parser is currently operating on"
  (identify-current-sentence :no-break))

(defun first-sentence ()
  "If there is a 'previous' sentence linked to the current
   sentence then walk back that chain to the end."
  (let ((first (sentence))) ;; prime pump
    (loop for prior = (previous first)
       when prior do (setq first prior)
       unless prior return first)))

(defun last-sentence (s)
  "If there is a 'next' on the input sentence 's' then
   walk forward on the 'next' chain until it ends."
  (let ((last s))
    (loop for next = (next last)
       when next do (setq last next)
       unless next return last)))


;;--- resource

(define-resource sentence)

(defun allocate-sentence ()
  (allocate-next-instance (get-resource :sentence)))

(defun initialize-sentence-resource ()
  ;; called from initialize-document-element-resources
  (initialize-resource (get-resource :sentence))
  (setq *previous-sentence* nil
        *current-sentence* nil))

(defmethod clear ((s sentence))
  (setf (sentence-string s) "")
  (setf (next s) nil) ;; call-next ???
  (setf (previous s) nil)
  (setf (starts-at-pos s) nil)
  (setf (ends-at-pos s) nil)
  (setf (starts-at-char s) nil)
  (setf (ends-at-char s) nil))

(defun initialize-sentences (&key start-pos)
  "Called from initialize-paragraphs or read-from-document,
   in which case it can be starting the first sentence of
   the next paragraph and had to do additional cleanup."
  (declare (special *current-paragraph*))
  (let ((p1 *current-paragraph*))
    (tr :para-when-initialzing-sentences p1)
    (unless p1
      (error "Threading bug: no value for *current-paragraph"))
    (cond
     ((prepopulated? p1)
      ;; reuse the sentences that are there. 
      (setq *current-sentence* (children p1)))
     (t
      (setq *current-sentence* nil)
      (let ((s1 (start-sentence (or start-pos
                                    (position# 1)))))
        (setf (children p1) s1)
        (setf (parent s1) p1)
        (set-document-index s1 1)
        s1)))))

(defun start-sentence (pos)
  "Called from initialize-sentences for the first one, then
   from period-hook -- 'pos' is the position after the period."
  (declare (special *reading-populated-document*
                    *sentence-terminating-punctuation*))
  (let ((s (if *reading-populated-document*
             (make-instance 'sentence) ;; permanent
             (allocate-sentence))) ;; reclaimed
        (index (if *current-sentence*
                 (1+ (doc-index *current-sentence*))
                 1)))
    (setf (starts-at-pos s) pos)
    (setf (starts-at-char s)
          (if *current-sentence*
            (pos-character-index pos)
            1))
    (when (null (starts-at-char s)) (lsp-break "bad index"))
    (setf (contents s) (make-sentence-container s))
    ;; lookup the current section for parent
    (when *current-sentence*
      (let* ((last *current-sentence*)
             (section (parent last)))
        (setq *previous-sentence* last)
        (setf (next last) s)
        (setf (previous s) last)
        (setf (parent s) section)
        (set-document-index s index)
        (setq *previous-sentence* last)
        (when (position-precedes (chart-position-before pos)
                                 (starts-at-pos last))
          (error "end before start"))
        (setf (ends-at-pos last) ;; stop at the period
              (chart-position-before pos))
        (setf (ends-at-char last) (pos-character-index pos))
        (when (string-equal "" (sentence-string last))
          ;; tie off the prev contents
          (setf (sentence-string last)
                (extract-string-from-char-buffers
                 (pos-character-index (starts-at-pos last))
                 ;; this is to make sure we get the "." at the end of the sentence
                 (+ (if (member (pos-terminal (ends-at-pos last))
                                *sentence-terminating-punctuation*)
                        1
                        0)
                    (pos-character-index (ends-at-pos last))))))))
    (tr :starting-sentence pos)
    (setq *current-sentence* s)))


(defmethod display-contents  ((s sentence) &optional (stream *standard-output*))
  (display-contents (contents s) stream))


(defgeneric prepopulated? (document-element)
  (:documentation "When working with prepopulated documents, 
  paragraphs start out with just the string of text between 
  the 'p' tags and the first time through this is rendered as 
  a sequence of sentences. If something goes wrong partway
  through this won't be true."))

(defmethod prepopulated? ((p paragraph))
  "A prepopulated paragraph has had some or all of its text
   rendered into sentences"
  (let ((first-sentence (children p)))
    (when first-sentence
      ;; Let's assume that if the first one has been handled
      ;; that the rest have been as well
      (prepopulated? first-sentence))))

(defmethod prepopulated? ((tt title-text))
  (let ((first-sentence (children tt)))
    (when first-sentence
      ;; Let's assume that if the first one has been handled
      ;; that the rest have been as well
      (prepopulated? first-sentence))))

(defmethod prepopulated? ((s sentence))
  "The string is set by a call from the period-hook, so it
   can't have a value unless we've swept over the sentence
   at least once."
  (not (string-equal "" (sentence-string s))))


(defparameter *copy-text-to-sentence-objects* t
  "Controls whether we fill the string field of
  the sentence object.")

(defun tie-off-ongoing-sentence-at-eos (pos-with-eos)
  "Called from simple-eos-check when we're in *scanning-terminals*
   mode and the word on the position is the eos marker (control-B).
   We used the same protocol as period-hook does -- it returns
   the position that has the period on it. "
  (let ((s (sentence))) ;; *current-sentence*
    (unless (ends-at-pos s)
      (set-sentence-endpoints pos-with-eos s))
    (tie-off-paragraph pos-with-eos)
    s))

(defun set-sentence-endpoints (period-pos sentence)
  "Called from period-hook during the sentence-making document
   sweep. The period-pos is the one that holds the period."
  (when (position-precedes period-pos (starts-at-pos sentence))
    (error "malformed sentence"))
  (setf (ends-at-pos sentence) period-pos)
  (setf (ends-at-char sentence)
        ;; include a period, exclude the EOS flag (cntrl-B)
        (if (eq (pos-terminal period-pos) *end-of-source*)
          (pos-character-index period-pos)
          (1+ (pos-character-index period-pos))))
  (let ((start (starts-at-char sentence))
        (end (ends-at-char sentence)))
    (unless (> start 0) (error "Sentence start is negative"))
    (unless (> end start) 
      (push-debug `(,sentence ,start ,end ,period-pos))
      (error "Sentence end (~a) less than start (~a)" end start))
    (let ((substring (extract-string-from-char-buffers
                      (starts-at-char sentence)
                      (ends-at-char sentence))))
      (setq substring (remove-leading-whitespace substring))
      (setf (sentence-string sentence) substring)
      sentence)))

(defun tie-off-paragraph (pos-with-eos)
  "If we're working with pre-built paragraphs from a document
   this won't happen, but documents with incrementally created
   paragraphs will usually have an unterminated final paragraph."
  (let ((p *current-paragraph*))
    (unless p (error "Why isn't there a current paragraph?"))
    (unless (ends-at-pos p)
      (setf (ends-at-pos p) pos-with-eos)
      (setf (ends-at-char p) (pos-character-index pos-with-eos))
      p)))



;;--- Gathering sentence lists (as strings) from an article

(defparameter *article-sentences* nil
  "Initialized to a hash-table by save-article-sentence 
   to store the sentences of an article.")

(defparameter *save-the-sentences-of-the-article?* nil
  "Gates whether or not we save the sentences.")

(defun collect-sentences-from-articles ()
  (when *article-sentences*
    (let ((as-list (hashtable-to-alist *article-sentences*)))
      (loop for as-item in as-list
         collect
	   (let ((sl-name (intern (format nil "*~a-SENTENCES*"
                                          (pname (car as-item)))
                                  (find-package :sp))))
	     (eval
	      `(defparameter ,sl-name '(,.(reverse (cdr as-item)))))
	     sl-name)))))


(defun create-article-corpora ()
  (when *article-sentences*
    (let ((as-list (hashtable-to-alist *article-sentences*)))
      (loop for as-item in as-list
         collect
	   (let ((sl-name (intern (format nil "*~a-SENTENCES*"
                                          (pname (car as-item)))
                                  (find-package :sp))))
	     (eval
	      `(defparameter ,sl-name
                 '(,.(loop for s in (reverse (cdr as-item))
                          collect `(p ,s)))))
             (define-sentence-corpus/expr
                 (intern (format nil "~a-CORPUS" (pname (car as-item)))
                         (find-package :sp))
                 sl-name)
	     sl-name)))))

(defmethod save-article-sentence ((article article) (sentence sentence))
  "Called from end-of-sentence-processing-cleanup and from a R3 article
   utility function."
  (declare (special *save-the-sentences-of-the-article?*))
  (when *save-the-sentences-of-the-article?*
    (unless *article-sentences*
      (setq *article-sentences* (make-hash-table)))
    (when (or (name article) *article-name*)
      (push (sentence-string sentence)
            (gethash (or *article-name*
                         (intern (pname (name article))
                                 (find-package :sp)))
                     *article-sentences*)))))




;;;--------------
;;; "documents"
;;;--------------
;; This is an old bit of syntactic sugar over files that wraps them
;; in an object and used their pathname-name as their index.
;; Good for operations over all the files in a directory where the
;; internal organization of the file isn't interesting or relevant.
;; See count-word-frequencies as an example.

(defclass document (named-object word-frequency)
  ((location :accessor doc-location
    :documentation "Holds an absolute pathname as returned
      from a call to directory."))
  (:documentation
   "Poor man's version of the article class"))

;; Make a resource? Or will they usually be part of one-off's.

(setup-find-or-make 'document)


;;;---------------------
;;; Document collection
;;;---------------------
#| Like doc-set, but it's too much work to modify it and
take if from the Grok era (and early 1990s) to today. |#

(defclass document-collection (named-object word-frequency)
  ()
  (:documentation "Collector for operations over a set of documents."))

(defvar *current-doc-collection* nil
  "Points to the most-recently set up document-collection object")



(defgeneric setup-doc-collection (name)
  (:documentation "Instantiate a document-collection object and
    set the global pointer. Could do a lot more if we reified the
    parameters on large article runs.")
  (:method ((name symbol))
    (let ((dc (make-instance 'document-collection :name name)))
      (setf *current-doc-collection* dc))))





;;;---------
;;; display
;;;---------

(defun display-document-state (&optional (stream *standard-output*))
  (format stream "~&   current article = ~a" (article))
  (format stream "~&   current section = ~a" (section))
  (format stream "~& current paragraph = ~a" (paragraph))
  (format stream "~&  current sentence = ~a" (sentence)))
          
