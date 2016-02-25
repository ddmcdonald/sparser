;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 2013-2015 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "object"
;;;   Module:  "objects;doc;"
;;;  Version:  July 2015

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
                            ordered indexed
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

;;;-----------------------------------
;;; Titled entities
;;;-----------------------------------

(defclass titled-entity ()
  ((title :initform nil :accessor title
   :documentation "Provides a title slot for the Title-text 
      of the entity.")))

(defclass string-holder ()
  ((content-string :initform "" :accessor content-string
                   :documentation "The text content of the element")))

;;;----------
;;; Titles
;;;----------

(defclass title-text (document-element named-object string-holder)
  ((sentence :initform nil :accessor title-sentence
    :documentation "When we're parsing long titles, the results
      and context are stored in this."))
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

;;;-----------------------------------
;;; Articles (whole documents/files)
;;;-----------------------------------

(defclass article (document-element named-object 
                   word-frequency titled-entity)
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

(defparameter *article-sentences* nil)


(defun collect-sentences-from-articles ()
  (when *article-sentences*
    (let ((as-list (hashtable-to-alist *article-sentences*)))
      (loop for as-item in as-list collect
	   (let ((sl-name (intern (format nil "*~s-SENTENCES*" (car as-item)))))
	     (eval
	      `(defparameter ,sl-name '(,.(reverse (cdr as-item)))))
	     sl-name)))))

(defmethod print-object ((a article) stream)
  (print-unreadable-object (a stream :type t)
    (format stream " ~a" (name a))
    (when (article-date a)
      (format stream " ~a" (article-date a)))))

(define-resource article)

(defun initialize-article-resource ()
  ;; called from initialize-document-element-resources
  (initialize-resource (get-resource :article)))

(defmethod clear ((a article))
  (setf (article-location a) nil)
  (setf (article-date a) nil)
  (setf (article-source a) nil)
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
  ;; Called from per-article-initializations, which is
  ;; called from analysis-core, which is called from
  ;; either analyze-text-from-string or analyze-text-from-file
  ;; though you can get to per-article-initializions from
  ;; do-document-as-stream-of-files -- Responsible for
  ;; kicking off the initialization (creation and linking
  ;; of first instances) of all the other document elements.
  (let ((obj (allocate-article)))
    (setf (name obj) (or name (known-in-context :name)))
    (setf (article-location obj)
          (or location (known-in-context :location)))
    (setf (article-date obj)
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
    (when (and (slot-boundp s 'title)
               (typep (title s) 'title-text))
      (format stream "~s" (content-string (title s))))))

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
  ;; Called from begin-new-article
  (let ((s1 (new-section-in-article nil (position# 1)))
        (article *current-article*))
    (setq *previous-section* nil
          *current-section* s1)
    (setf (children article) s1)
    (setf (parent s1) article)
    (setf (children s1)
          (initialize-paragraphs)))) ;; returns 1st para

(defmethod clear ((s section))
  (setf (parent s) nil) ;; these need their own clear's
  (setf (name s) nil)
  (call-next-method))

(defun allocate-section ()
  (allocate-next-instance (get-resource :section)))

;;////// previous and next are eq
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
    (when ongoing
      (setf (next ongoing) s)
      (setf (previous s) ongoing)
      (setf (ends-at-pos ongoing) start-pos)
      (setf (ends-at-char ongoing) (pos-character-index start-pos))
      (setq *previous-section* ongoing))
    (setq *current-section* s)))

;;;----------------------------------------
;;; A section that contains other sections
;;;----------------------------------------

(defclass section-of-sections (document-element named-object titled-entity)
  ()
  (:documentation "Motivated by the NXLM for PubMed articles where there
      is can be multiple titled 'section' elements within a section.
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
  (:documentation "An orthographic paragraph as established
    by patterns of newlines. See sort-out-result-of-newline-analysis"))

(define-resource paragraph)

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

(defun initialize-paragraphs ()
  ;; Called from initialize-sections
  (let ((p (begin-new-paragraph (position# 1)))
        (section *current-section*))
    (unless section
      (error "Threading bug: no value for *current-section*"))
    (setf (parent p) section)
    (initialize-sentences)
    p))


(defun begin-new-paragraph (start-pos)
  (declare (special *tts-after-each-section*))
  (let ((p (allocate-paragraph))
        (ongoing *current-paragraph*))
    (setf (name p) (next-indexical-name :paragraph))
    (setf (starts-at-pos p) start-pos)
    (setf (starts-at-char p) (pos-character-index start-pos))
    (when ongoing ;; should always be true
      (setf (previous p) ongoing)
      (setf (next ongoing) p)
      (setf (ends-at-pos ongoing) start-pos)
      (setf (ends-at-char ongoing) (pos-character-index start-pos))
      (setq *previous-paragraph* ongoing)
      (when (and *tts-after-each-section*
                 ongoing)
        (format t "~^&~%")
        (tts t (starts-at-pos ongoing) start-pos)
        (format t "~^&~%")))
    (setf *current-paragraph* p)
    p))


;;--- action at paragraph boundaries

(defun check-begin-new-paragraph (start-pos)
  ;; Called from sort-out-result-of-newline-analysis
  ;; We need this because the newline handler isn't soaking up all
  ;; the newlines internally, and as a result makes one call to
  ;; this per newline character encountered.
  (declare (special *current-paragraph*))
  (unless (and *current-paragraph*
               (eql start-pos (starts-at-pos *current-paragraph*)))
    (begin-new-paragraph start-pos)))



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


(defmethod save-article-sentence ((article article) (sentence sentence))
  (unless *article-sentences*
    (setq *article-sentences* (make-hash-table)))
  (when (name article)
    (push (sentence-string sentence) (gethash (name article) *article-sentences*))))



(defmethod print-object ((s sentence) stream)
  (print-unreadable-object (s stream :type t)
    (format stream "p~a -- "
            (pos-token-index (starts-at-pos s))) ;; !! recycles !!
    (if (and (slot-boundp s 'ends-at-pos)
               (ends-at-pos s))
      (format stream "p~a" (pos-token-index(ends-at-pos s)))
      (format stream "?"))))

(define-resource sentence)

(defun allocate-sentence ()
  (allocate-next-instance (get-resource :sentence)))

(defvar *previous-sentence* nil)
(defun previous-sentence () *previous-sentence*)

(defvar *current-sentence* nil)
(defun sentence () *current-sentence*)

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

(defun initialize-sentences ()
  ;; Called from initialize-paragraphs or read-from-document,
  ;; in which case it can be starting the first sentence of
  ;; the next paragraph and had to do additional cleanup.
  (declare (special *current-paragraph*))
  (let ((p1 *current-paragraph*))
    (unless p1
      (error "Threading bug: no value for *current-paragraph"))
    (cond
     ((prepopulated? p1)
      ;; reuse the sentences that are there. 
      (setq *current-sentence* (children p1)))
     (t
      (setq *current-sentence* nil)
      (let ((s1 (start-sentence (position# 1))))
        (setf (children p1) s1)
        (setf (parent s1) p1)
        (set-document-index s1 1)
        s1)))))

(defun start-sentence (pos)
  ;; Called from initialize-sentences for the first one, then
  ;; from period-hook -- pos is the position after the period.
  (declare (special *reading-populated-document*))
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
    (setf (contents s) (make-sentence-container s))
    ;; lookup the current section for parent
    (when *current-sentence*
      (let* ((last *current-sentence*)
             (section (parent last)))
        (setq *previous-sentence* last)
        (setf (next last) s)
        (setf (previous s) last)
        (setf (parent s) section)
        (setf (ends-at-pos last) ;; stop at the period
              (chart-position-before pos))
        (setf (ends-at-char last) (pos-character-index pos))
        (set-document-index s index)
        ;; tie off the prev contents
        (setq *previous-sentence* last)
        (when (string-equal "" (sentence-string last))
          (setf (sentence-string last)
                (extract-character-between-positions 
                 (starts-at-pos last) (ends-at-pos last))))))
    ;; 1st sentence in a section (= paragraph) has the
    ;; section as its parent
    (tr :starting-sentence pos)
    (setq *current-sentence* s)))

(defmethod display-contents  ((s sentence)
                              &optional (stream *standard-output*))
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

(defmethod prepopulated? ((s sentence))
  "The string is set by a call from the period-hook, so it
   can't have a value unless we've swept over the sentence
   at least once."
  (not (string-equal "" (sentence-string s))))


(defparameter *copy-text-to-sentence-objects* t
  "Controls whether we fill the string field of
  the sentence object.")


(defun set-sentence-endpoints (period-pos sentence)
  ;; Called from period-hook
  (setf (ends-at-pos sentence) period-pos)
  (setf (ends-at-char sentence) (1+ (pos-character-index period-pos)))
  (let ((start (starts-at-char sentence))
        (end (ends-at-char sentence)))
    (unless (> start 0) (error "Sentence start is negative"))
    (unless (> end start) 
      (push-debug `(,sentence ,start ,end ,period-pos))
      (break "Sentence end less than start"))
    ;; This should be on a flag -- creates far too much noise
    ;;(format t "~&------- sentence ~a~%" sentence)
    ;;(push-debug `(,sentence ,period-pos)) (break "before substring")
    (let ((substring (extract-string-from-char-buffers
                      (starts-at-char sentence)
                      (ends-at-char sentence))))
      ;; can remove the extra step when we're guarenteed that
      ;; the cross-buffer code is robust.
      (setf (sentence-string sentence) substring)
      sentence)))


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





